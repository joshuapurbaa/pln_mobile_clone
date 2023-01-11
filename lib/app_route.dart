import 'dart:developer';

import 'package:activity/activity.dart';
import 'package:beranda/beranda.dart';
import 'package:bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notification/notification.dart';
import 'package:onboarding/onboarding.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:pln_mobile_clone/dependencies_injection.dart';
import 'package:point/point.dart';
import 'package:profile/profile.dart';
import 'package:signin/signin.dart';
import 'package:signup/signup.dart';

enum Routes {
  root('/'),
  onboarding('/onboarding'),
  signin('/signin'),
  signinWithAnotherMethod('/signinWithAnotherMethod'),
  signup('/signup'),
  signinWithEmail('/signinWithEmail'),
  lupaPassword('/lupaPassword'),
  beranda('/beranda'),
  profile('/profile'),
  ;

  const Routes(this.path);
  final String path;
}

class AppRoute {
  AppRoute._();
  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final goRouter = GoRouter(
    initialLocation: Routes.signin.path,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    refreshListenable: sl<AppStateManager>(),
    routes: [
      GoRoute(
        path: Routes.root.path,
        redirect: (_, __) => Routes.beranda.path,
      ),
      GoRoute(
        path: Routes.onboarding.path,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.signin.path,
        name: Routes.signin.name,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: Routes.signinWithAnotherMethod.path,
        name: Routes.signinWithAnotherMethod.name,
        builder: (context, state) => const SigninWithAnotherMethodScreen(),
        routes: [
          GoRoute(
            path: Routes.signup.name,
            name: Routes.signup.name,
            builder: (context, state) => const SignupScreen(),
          ),
          GoRoute(
            path: Routes.signinWithEmail.name,
            name: Routes.signinWithEmail.name,
            builder: (context, state) {
              log(state.fullpath!);
              return const SignInWithEmailScreen();
            },
            routes: [
              GoRoute(
                path: Routes.lupaPassword.name,
                name: Routes.lupaPassword.name,
                builder: (context, state) => const LupaPasswordScreen(),
              ),
            ],
          ),
        ],
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BottomNavBar(child: child);
        },
        routes: [
          // Products
          GoRoute(
            path: Routes.beranda.path,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const BerandaScreen(),
            ),
          ),
          // Shopping Cart
          GoRoute(
            path: '/activity',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ActivityScreen(),
            ),
          ),
          GoRoute(
            path: '/point',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const PointScreen(),
            ),
          ),
          GoRoute(
            path: '/notification',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const NotificationScreen(),
            ),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProfileScreen(),
            ),
          ),
        ],
      ),
    ],
    redirect: (_, state) {
      final currentSubloc = state.subloc;
      final String onBoarding = Routes.onboarding.path;
      final String signin = Routes.signin.path;
      final String signinWithAnotherMethod =
          Routes.signinWithAnotherMethod.path;
      final String signinWithEmail =
          Routes.signinWithAnotherMethod.path + Routes.signinWithEmail.path;
      final String signup =
          Routes.signinWithAnotherMethod.path + Routes.signup.path;
      final String root = Routes.root.path;
      final String profile = Routes.profile.path;

      final bool auth = currentSubloc == signin ||
          currentSubloc == signinWithAnotherMethod ||
          currentSubloc == signinWithEmail ||
          currentSubloc == signup;

      final bool isOnboardingComplete =
          sl<AppStateManager>().isOnboardingComplete;
      final bool isSignedIn = sl<AppStateManager>().isSignedIn;

      if (!isOnboardingComplete) {
        log('1');
        return onBoarding;
      }
      if (isOnboardingComplete && currentSubloc == onBoarding) {
        log('1,5');
        return signin;
      }

      if (!isSignedIn && currentSubloc == profile) {
        log('2');
        return auth ? currentSubloc : signin;
      }

      if (!isSignedIn) {
        log('3');
        log(currentSubloc);
        return auth ? null : currentSubloc;
      }

      if (auth && isSignedIn) {
        log('4');
        return root;
      }

      return null;
    },
  );
}
