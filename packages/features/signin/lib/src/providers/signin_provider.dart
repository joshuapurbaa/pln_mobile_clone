import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  bool _termsCheckboxVal = false;
  bool get termsCheckboxVal => _termsCheckboxVal;

  bool _signInChoicesVal = false;
  bool get signInChoicesVal => _signInChoicesVal;

  void onTapped(bool val) {
    _termsCheckboxVal = val;
    notifyListeners();
  }

  void openChoices() {
    _signInChoicesVal = !_signInChoicesVal;
    notifyListeners();
  }
}
