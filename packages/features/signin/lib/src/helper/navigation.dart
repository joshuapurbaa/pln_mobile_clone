import 'package:flutter/material.dart';

class AppNavigation {
  AppNavigation._();

  static void goTo(BuildContext ctx, String route) {
    Navigator.pushNamed(ctx, route);
  }
}
