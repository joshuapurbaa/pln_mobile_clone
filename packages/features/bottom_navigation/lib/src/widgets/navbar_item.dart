import 'package:flutter/material.dart';

/// Representation of a tab item in a [ScaffoldWithNavBar]
class NavBarTabItem extends BottomNavigationBarItem {
  /// Constructs an [NavBarTabItem].
  const NavBarTabItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
  }) : super(icon: icon, label: label);

  /// The initial location/path
  final String initialLocation;
}
