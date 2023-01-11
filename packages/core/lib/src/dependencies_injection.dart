import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  appStateManager();
}

void initPrefmanager(SharedPreferences iniPrefManager) {
  sl.registerLazySingleton<PrefManager>(() => PrefManager(iniPrefManager));
}

void appStateManager() {
  sl.registerLazySingleton(() => AppStateManager());
}
