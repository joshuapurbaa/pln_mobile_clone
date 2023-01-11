import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static void goNamed(BuildContext ctx, String route) {
    ctx.goNamed(route);
  }
}
