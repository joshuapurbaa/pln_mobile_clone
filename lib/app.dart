import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:signin/signin.dart';
import 'package:signup/signup.dart';
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
        return ChangeNotifierProvider(
          create: (context) => SignInProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'PLN Mobile Clone',
            theme: AppTheme.light(),
            routes: {
              '/': (context) => const SignInScreen(),
              '/signup': (context) => const SignupScreen(),
              '/signin-with-another': (context) =>
                  const SignInAnotherMethodScreen(),
              '/signin-with-email': (context) => const SignInWithEmailScreen(),
              '/lupa-passoword': (context) => const LupaPasswordScreen(),
            },
          ),
        );
      },
    );
  }
}
