import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  String kUser = 'user';
  String kOnboarding = 'onboarding';

  SharedPreferences preferences;
  PrefManager(this.preferences);

  Future<void> cacheUser() async {
    await preferences.setBool(kUser, true);
  }

  Future<bool> isUserLoggedIn() async {
    return preferences.getBool(kUser) ?? false;
  }

  Future<void> completeOnboarding() async {
    await preferences.setBool(kOnboarding, true);
  }

  Future<bool> didCompleteOnboarding() async {
    return preferences.getBool(kOnboarding) ?? false;
  }

  Future<void> invalidate() async {
    await preferences.setBool(kUser, false);
  }
}
