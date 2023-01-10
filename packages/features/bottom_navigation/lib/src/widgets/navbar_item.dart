import 'package:flutter/material.dart';

/// Representation of a tab item in a [ScaffoldWithNavBar]
class NavBarTabItem extends BottomNavigationBarItem {
  /// Constructs an [NavBarTabItem].
  const NavBarTabItem({
    required Widget icon,
    String? label,
  }) : super(icon: icon, label: label);
}
