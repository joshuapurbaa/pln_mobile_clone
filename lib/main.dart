import 'package:flutter/material.dart';
import 'package:pln_mobile_clone/dependencies_injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'app_state_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  SharedPreferences.getInstance().then(
    (value) {
      initPrefmanager(value);
      sl<AppStateManager>().initializeApp();
      runApp(const App());
    },
  );
}
