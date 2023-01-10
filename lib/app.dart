import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pln_mobile_clone/app_route.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';
import 'package:style_resources/style_resources.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 898),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => SignInProvider(),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'PLN Mobile Clone',
            theme: AppTheme.light(),
            routerConfig: AppRoute.goRouter,
            // routes: {
            //   '/': (context) => const BerandaScreen(),
            //   '/signup': (context) => const SignupScreen(),
            //   '/signin-with-another': (context) =>
            //       const SignInAnotherMethodScreen(),
            //   '/signin-with-email': (context) => const SignInWithEmailScreen(),
            //   '/lupa-passoword': (context) => const LupaPasswordScreen(),
            // },
          ),
        );
      },
    );
  }
}
