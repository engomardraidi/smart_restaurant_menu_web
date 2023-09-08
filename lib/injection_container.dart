import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/apis/api_consumer.dart';
import 'core/apis/http_consumer.dart';
import 'core/network/network_info.dart';

GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  // Features
  // Bloc
  initBloc();

  // Use Cases
  initUsecases();

  // Repositories
  initRepositories();

  // Data Sources
  initDataSources();

  // Core
  initCore();

  // External
  initExternal();
}

void initBloc() {}

void initUsecases() {}

void initRepositories() {}

void initDataSources() {}

void initCore() {
  serviceLocator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(internetConnectionChecker: serviceLocator()),
  );
  serviceLocator.registerLazySingleton<ApiConsumer>(
    () => HttpConsumer(client: serviceLocator()),
  );
}

void initExternal() async {
  serviceLocator.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker(),
  );
  serviceLocator.registerLazySingleton<Client>(
    () => Client(),
  );
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  serviceLocator
      .registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
