// lib/config/dependency_injection.dart
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../domain/repositories/weather_repository.dart';
import '../domain/repositories/auth_repository.dart';
import '../domain/repositories/location_repository.dart';
import '../domain/usecases/fetch_weather.dart';
import '../domain/usecases/get_current_location.dart';
import '../domain/usecases/sign_in.dart';
import '../domain/usecases/sign_up.dart';
import '../domain/usecases/sign_out.dart';
import '../infrastructure/data_sources/weather_api.dart';
import '../infrastructure/data_sources/local_storage.dart';
import '../infrastructure/data_sources/firebase_auth_source.dart';
import '../infrastructure/repositories/weather_repository_impl.dart';
import '../infrastructure/repositories/auth_repository_impl.dart';
import '../infrastructure/repositories/location_repository_impl.dart';
import '../infrastructure/services/connectivity_service.dart';
import '../application/blocs/auth/auth_bloc.dart';
import '../application/blocs/weather/weather_bloc.dart';
import '../application/blocs/location/location_bloc.dart';

final getIt = GetIt.instance;

void initDependencies() {
  // External
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker());
  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  // Data sources
  getIt.registerLazySingleton(() => WeatherApi(getIt()));
  getIt.registerLazySingleton(() => LocalStorage());
  getIt.registerLazySingleton(() => FirebaseAuthSource(getIt()));

  // Repositories
  getIt.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<LocationRepository>(
    () => LocationRepositoryImpl(),
  );

  // Use cases
  getIt.registerLazySingleton(() => FetchWeather(getIt()));
  getIt.registerLazySingleton(() => GetCurrentLocation(getIt()));
  getIt.registerLazySingleton(() => SignIn(getIt()));
  getIt.registerLazySingleton(() => SignUp(getIt()));
  getIt.registerLazySingleton(() => SignOut(getIt()));

  // Services
  getIt.registerLazySingleton(() => ConnectivityService(getIt()));

  // BLoCs
  getIt.registerFactory(() => AuthBloc(
        signIn: getIt(),
        signUp: getIt(),
        signOut: getIt(),
      ));
  getIt.registerFactory(() => WeatherBloc(fetchWeather: getIt()));
  getIt.registerFactory(() => LocationBloc(getCurrentLocation: getIt()));
}
