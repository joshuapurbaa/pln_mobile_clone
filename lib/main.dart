import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

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
