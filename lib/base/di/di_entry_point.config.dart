// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/app/data/repos/app_repo_impl.dart' as _i11;
import '../../features/app/data/sources/locale_source/language_local_source.dart' as _i8;
import '../../features/app/data/sources/locale_source/theme_locale_source.dart' as _i9;
import '../../features/app/domain/repos/app_repo.dart' as _i10;
import '../../features/app/presentation/viewmodels/app_viewmodel.dart' as _i12;
import '../../features/forecast/data/repo_impl/forecast_repository_implementation.dart' as _i18;
import '../../features/forecast/data/sources/forecast_remote_source.dart' as _i16;
import '../../features/forecast/domain/repository/forecast_repository.dart' as _i17;
import '../../features/forecast/presentation/viewmodels/forecast_viewmodel.dart' as _i3;
import '../../features/weather/data/repo_impl/weather_repository_implementation.dart' as _i20;
import '../../features/weather/data/sources/weather_remote_source.dart' as _i15;
import '../../features/weather/domain/repository/weather_repository.dart' as _i19;
import '../../features/weather/presentation/viewmodels/weather_viewmodel.dart' as _i21;
import '../data/networking/http_client.dart' as _i14;
import '../data/stock/app_disk_cache.dart' as _i7;
import '../presentation/routing/app_router.dart' as _i4;
import 'app_module.dart' as _i22;
import 'network_module.dart' as _i23;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initDependencyInjection(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  final networkModule = _$NetworkModule();
  gh.factory<_i3.ForecastViewmodel>(() => _i3.ForecastViewmodel());
  gh.singleton<_i4.AppRouter>(() => appModule.getAppRouter());
  gh.singleton<_i5.FlutterSecureStorage>(() => appModule.getSecureStorage());
  await gh.singletonAsync<_i6.Box<dynamic>>(
    () => appModule.appCacheBox(),
    preResolve: true,
  );
  gh.factory<String>(
    () => networkModule.apiBaseUrl,
    instanceName: 'base',
  );
  gh.singleton<_i7.AppDiskCache>(() => appModule.appDiskCache(gh<_i6.Box<dynamic>>()));
  gh.singleton<_i8.LanguageLocalSource>(() => appModule.appLanguageLocalSource(gh<_i7.AppDiskCache>()));
  gh.singleton<_i9.ThemeLocalSource>(() => appModule.appThemeLocalSource(gh<_i7.AppDiskCache>()));
  gh.singleton<_i10.AppRepository>(() => _i11.AppRepositoryImpl(
        gh<_i8.LanguageLocalSource>(),
        gh<_i9.ThemeLocalSource>(),
      ));
  gh.singleton<_i12.AppViewmodel>(() => _i12.AppViewmodel(gh<_i10.AppRepository>()));
  gh.factory<_i13.BaseOptions>(
    () => networkModule.dioOptions(gh<String>(instanceName: 'base')),
    instanceName: 'base',
  );
  gh.singleton<_i13.Dio>(() => networkModule.dio(gh<_i13.BaseOptions>(instanceName: 'base')));
  gh.singleton<_i14.HttpClient>(() => networkModule.httpClient(gh<_i13.Dio>()));
  gh.lazySingleton<_i15.WeatherRemoteSource>(() => _i15.WeatherRemoteSourceImpl(gh<_i14.HttpClient>()));
  gh.lazySingleton<_i16.ForecastRemoteSource>(() => _i16.ForecastRemoteSourceImpl(gh<_i14.HttpClient>()));
  gh.lazySingleton<_i17.ForecastRepository>(() => _i18.ForecastRepositoryImpl(gh<_i16.ForecastRemoteSource>()));
  gh.lazySingleton<_i19.WeatherRepository>(() => _i20.WeatherRepositoryImpl(gh<_i15.WeatherRemoteSource>()));
  gh.factory<_i21.WeatherViewmodel>(() => _i21.WeatherViewmodel(gh<_i19.WeatherRepository>()));
  return getIt;
}

class _$AppModule extends _i22.AppModule {}

class _$NetworkModule extends _i23.NetworkModule {}
