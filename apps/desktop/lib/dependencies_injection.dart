import 'package:get_it/get_it.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/features/features.dart';
import 'package:sky_printing_admin/module/main/cubit/main_cubit.dart';
import 'package:sky_printing_admin/module/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_admin/utils/utils.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(DioClient(isUnitTest: isUnitTest));
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  if (isHiveEnable) {
    await _initHiveBoxes(
      isUnitTest: isUnitTest,
      prefixBox: prefixBox,
    );
  }
}

Future<void> _initHiveBoxes({
  bool isUnitTest = false,
  String prefixBox = '',
}) async {
  await MainBoxMixin.initHive(prefixBox);
  sl.registerSingleton<MainBoxMixin>(MainBoxMixin());
}

/// Register repositories
void _repositories() {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl(), sl()),
  );
  // sl.registerLazySingleton<UsersRepository>(
  //   () => UsersRepositoryImpl(sl()),
  // );
}

/// Register dataSources
void _dataSources() {
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(sl()),
  );
  // sl.registerLazySingleton<UsersRemoteDatasource>(
  //   () => UsersRemoteDatasourceImpl(sl()),
  // );
}

void _useCase() {
  /// Auth
  sl.registerLazySingleton(
    () => PostLogin(sl()),
  );
  sl.registerLazySingleton(
    () => PostRegister(sl()),
  );

  /// Users
  // sl.registerLazySingleton(
  //   () => GetUsers(sl()),
  // );
}

void _cubit() {
  /// Auth
  sl.registerFactory(
    () => RegisterCubit(sl()),
  );
  sl.registerFactory(
    () => AuthCubit(sl()),
  );

  /// Users
  // sl.registerFactory(
  //   () => UsersCubit(sl()),
  // );
  sl.registerFactory(
    () => SettingsCubit(),
  );
  sl.registerFactory(
    () => MainCubit(),
  );
}