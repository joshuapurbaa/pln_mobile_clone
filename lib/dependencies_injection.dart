import 'package:get_it/get_it.dart';
import 'package:pln_mobile_clone/app_state_manager.dart';
import 'package:pln_mobile_clone/pref_manager.dart';
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
