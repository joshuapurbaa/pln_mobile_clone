import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  bool _termsCheckboxVal = false;
  bool get termsCheckboxVal => _termsCheckboxVal;

  bool _isBottonActive = false;
  bool get isBottonActive => _isBottonActive;

  bool _signInChoicesVal = false;
  bool get signInChoicesVal => _signInChoicesVal;

  final FocusNode focusNode = FocusNode();

  TextTheme textTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  void onTapped(bool val) {
    _termsCheckboxVal = val;
    notifyListeners();
  }

  void onButtonTapped(String val) {
    if (val.length > 4) {
      _isBottonActive = true;
    } else {
      _isBottonActive = false;
    }
    notifyListeners();
  }

  void openChoices() {
    _signInChoicesVal = !_signInChoicesVal;
    notifyListeners();
  }
}
