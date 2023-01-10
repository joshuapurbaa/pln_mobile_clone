import 'package:flutter/cupertino.dart';
import 'package:style_resources/style_resources.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void getCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  Color _iconColor = AppPalette.primaryBlue;
  Color get iconColor => _iconColor;

  void onIndex(int index) {
    if (index != _currentIndex) {
      _iconColor = AppPalette.textGrey;
    }
    notifyListeners();
  }
}
