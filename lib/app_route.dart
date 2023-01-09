import 'package:activity/activity.dart';
import 'package:beranda/beranda.dart';
import 'package:bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notification/notification.dart';
import 'package:point/point.dart';
import 'package:profile/profile.dart';
import 'package:style_resources/style_resources.dart';

class AppRoute {
  AppRoute._();
  // private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final tabs = [
    NavBarTabItem(
      initialLocation: '/beranda',
      icon: Image.asset(
        'assets/home.png',
        width: AppSize.size30,
      ),
      label: 'Beranda',
    ),
    NavBarTabItem(
      initialLocation: '/activity',
      icon: Image.asset('assets/activity.png'),
      label: 'Aktivitas',
    ),
    NavBarTabItem(
      initialLocation: '/point',
      icon: Image.asset('assets/point.png'),
      label: 'PLN Point',
    ),
    NavBarTabItem(
      initialLocation: '/notification',
      icon: Image.asset('assets/notification.png'),
      label: 'Notifikasi',
    ),
    NavBarTabItem(
      initialLocation: '/profile',
      icon: Image.asset('assets/profile.png'),
      label: 'Profile',
    ),
  ];

  static final goRouter = GoRouter(
    initialLocation: '/beranda',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BottomNavBar(tabs: tabs, child: child);
        },
        routes: [
          // Products
          GoRoute(
            path: '/beranda',
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
  );
}
