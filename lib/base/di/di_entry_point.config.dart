// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stock/stock.dart' as _i10;

import '../../features/app/data/repos/app_repo_impl.dart' as _i18;
import '../../features/app/domain/repos/app_repo.dart' as _i17;
import '../../features/app/presentation/ui-models/languages_enum.dart' as _i11;
import '../../features/app/presentation/ui-models/theme_enum.dart' as _i12;
import '../../features/app/presentation/viewmodels/app_viewmodel.dart' as _i19;
import '../../features/forecast/data/repo_impl/forecast_repository_implementation.dart' as _i22;
import '../../features/forecast/data/sources/forecast_remote_source.dart' as _i20;
import '../../features/forecast/domain/repository/forecast_repository.dart' as _i21;
import '../../features/forecast/presentation/viewmodels/forecast_viewmodel.dart' as _i6;
import '../../features/weather/data/repo_impl/weather_repository_implementation.dart' as _i15;
import '../../features/weather/data/sources/weather_remote_source.dart' as _i13;
import '../../features/weather/domain/repository/weather_repository.dart' as _i14;
import '../../features/weather/presentation/viewmodels/weather_viewmodel.dart' as _i16;
import '../data/networking/http_client.dart' as _i9;
import '../data/stock/app_disk_cache.dart' as _i7;
import '../presentation/routing/app_router.dart' as _i3;
import 'app_module.dart' as _i23;
import 'network_module.dart' as _i24;

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
  gh.singleton<_i3.AppRouter>(appModule.getAppRouter());
  await gh.singletonAsync<_i4.Box<dynamic>>(
    () => appModule.appCacheBox(),
    preResolve: true,
  );
  gh.singleton<_i5.FlutterSecureStorage>(appModule.getSecureStorage());
  gh.factory<_i6.ForecastViewmodel>(() => _i6.ForecastViewmodel());
  gh.factory<String>(
    () => networkModule.apiBaseUrl,
    instanceName: 'base',
  );
  gh.singleton<_i7.AppDiskCache>(appModule.appDiskCache(gh<_i4.Box<dynamic>>()));
  gh.factory<_i8.BaseOptions>(
    () => networkModule.dioOptions(gh<String>(instanceName: 'base')),
    instanceName: 'base',
  );
  gh.singleton<_i8.Dio>(networkModule.dio(gh<_i8.BaseOptions>(instanceName: 'base')));
  gh.singleton<_i9.HttpClient>(networkModule.httpClient(gh<_i8.Dio>()));
  gh.singleton<_i10.SourceOfTruth<String, _i11.LanguageEnum>>(appModule.appLanguageLocalSource(gh<_i7.AppDiskCache>()));
  gh.singleton<_i10.SourceOfTruth<String, _i12.ThemeEnum>>(appModule.appThemeLocalSource(gh<_i7.AppDiskCache>()));
  gh.lazySingleton<_i13.WeatherRemoteSource>(() => _i13.WeatherRemoteSourceImpl(gh<_i9.HttpClient>()));
  gh.lazySingleton<_i14.WeatherRepository>(() => _i15.WeatherRepositoryImpl(gh<_i13.WeatherRemoteSource>()));
  gh.factory<_i16.WeatherViewmodel>(() => _i16.WeatherViewmodel(gh<_i14.WeatherRepository>()));
  gh.singleton<_i17.AppRepository>(_i18.AppRepositoryImpl(
    gh<_i10.SourceOfTruth<String, _i11.LanguageEnum>>(),
    gh<_i10.SourceOfTruth<String, _i12.ThemeEnum>>(),
  ));
  gh.singleton<_i19.AppViewmodel>(_i19.AppViewmodel(gh<_i17.AppRepository>()));
  gh.lazySingleton<_i20.ForecastRemoteSource>(() => _i20.ForecastRemoteSourceImpl(gh<_i9.HttpClient>()));
  gh.lazySingleton<_i21.ForecastRepository>(() => _i22.ForecastRepositoryImpl(gh<_i20.ForecastRemoteSource>()));
  return getIt;
}

class _$AppModule extends _i23.AppModule {}

class _$NetworkModule extends _i24.NetworkModule {}
