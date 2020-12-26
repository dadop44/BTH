import 'package:bth/services/firestore_services.dart';
import 'package:bth/services/authentication.dart';
import 'package:get_it/get_it.dart';
import 'package:bth/services/navigation_services.dart';
import 'package:bth/services/dialog_services.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => FireStoreService());
}
