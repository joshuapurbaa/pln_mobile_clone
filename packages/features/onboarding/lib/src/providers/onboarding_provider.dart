import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  bool _isLastIndex = false;
  bool get isLastIndex => _isLastIndex;

  bool _showBackArrow = false;
  bool get showBackArrow => _showBackArrow;

  final PageController _controller = PageController();
  PageController get controller => _controller;

  void onSliding(int index) {
    if (index > 0) {
      _showBackArrow = true;

      if (index <= 2) {
        _isLastIndex = false;
        if (index == 2) {
          _isLastIndex = true;
        }
      }
      notifyListeners();
    } else {
      _showBackArrow = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
