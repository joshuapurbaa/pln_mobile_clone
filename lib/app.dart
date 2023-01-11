import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pln_mobile_clone/app_route.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:pln_mobile_clone/dependencies_injection.dart';
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
            ChangeNotifierProvider(
              create: (_) => sl<AppStateManager>(),
            )
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'PLN Mobile Clone',
            theme: AppTheme.light(),
            routerDelegate: AppRoute.goRouter.routerDelegate,
            routeInformationParser: AppRoute.goRouter.routeInformationParser,
            routeInformationProvider:
                AppRoute.goRouter.routeInformationProvider,
          ),
        );
      },
    );
  }
}
