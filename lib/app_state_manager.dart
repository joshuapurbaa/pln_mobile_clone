import 'package:flutter/cupertino.dart';
import 'package:pln_mobile_clone/dependencies_injection.dart';
import 'package:pln_mobile_clone/pref_manager.dart';

class AppStateManager extends ChangeNotifier {
  bool _signedIn = false;
  bool get isSignedIn => _signedIn;

  bool _onboardingComplete = false;
  bool get isOnboardingComplete => _onboardingComplete;

  Future<void> initializeApp() async {
    _signedIn = await sl<PrefManager>().isUserLoggedIn();
    _onboardingComplete = await sl<PrefManager>().didCompleteOnboarding();
  }

  void onboarded() async {
    _onboardingComplete = true;
    await sl<PrefManager>().completeOnboarding();
    notifyListeners();
  }

  void signin() async {
    _signedIn = true;
    await sl<PrefManager>().cacheUser();
    notifyListeners();
  }

  void signout() async {
    _signedIn = false;
    await sl<PrefManager>().invalidate();
    await initializeApp();
    notifyListeners();
  }
}
