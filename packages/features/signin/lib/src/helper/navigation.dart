import 'package:flutter/material.dart';

class AppNavigation {
  AppNavigation._();

  static void goNamed(BuildContext ctx, String route) {
    Navigator.pushNamed(ctx, route);
  }
}
