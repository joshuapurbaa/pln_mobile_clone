import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:style_resources/style_resources.dart';

import '../bottom_navigation.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> tabs = [
    '/beranda',
    '/activity',
    '/point',
    '/notification',
    '/profile',
  ];

  int _locationToTabIndex(String location) {
    final index = tabs.indexWhere((t) => location.startsWith(t));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  void _onItemTapped(BuildContext context, int tabIndex) {
    // Only navigate if the tab index has changed
    if (tabIndex != _currentIndex) {
      context.go(tabs[tabIndex]);
    }
  }

  Color _iconColor(int currentIndex, index) {
    return currentIndex == index ? AppPalette.primaryBlue : AppPalette.textGrey;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          _buildNavBarItem(
            label: 'Beranda',
            icon: 'home',
            index: 0,
          ),
          _buildNavBarItem(
            label: 'Aktivitas',
            icon: 'activity',
            index: 1,
          ),
          _buildNavBarItem(
            label: 'PLN Point',
            icon: 'point',
            index: 2,
          ),
          _buildNavBarItem(
            label: 'Notifikasi',
            icon: 'notification',
            index: 3,
          ),
          _buildNavBarItem(
            label: 'Profile',
            icon: 'profile',
            index: 4,
          ),
        ],
        onTap: (index) => _onItemTapped(context, index),
        unselectedItemColor: AppPalette.textGrey,
        selectedItemColor: AppPalette.primaryBlue,
        selectedLabelStyle: textTheme.labelSmall!
            .copyWith(fontSize: 13, color: AppPalette.primaryBlue),
        unselectedLabelStyle: textTheme.labelSmall!
            .copyWith(fontSize: 13, color: AppPalette.textGrey),
      ),
    );
  }

  NavBarTabItem _buildNavBarItem({
    required String icon,
    required String label,
    required int index,
  }) {
    return NavBarTabItem(
      icon: Image.asset(
        'assets/$icon.png',
        width: AppSize.size24,
        package: 'bottom_navigation',
        color: _iconColor(_currentIndex, index),
      ),
      label: label,
    );
  }
}
