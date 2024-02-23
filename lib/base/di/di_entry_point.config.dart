// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stock/stock.dart' as _i9;

import '../../features/app/data/repos/app_repo_impl.dart' as _i17;
import '../../features/app/domain/repos/app_repo.dart' as _i16;
import '../../features/app/presentation/ui-models/languages_enum.dart' as _i10;
import '../../features/app/presentation/ui-models/theme_enum.dart' as _i11;
import '../../features/app/presentation/viewmodels/app_viewmodel.dart' as _i18;
import '../../features/weather/data/repo_impl/weather_repository_implementation.dart' as _i14;
import '../../features/weather/data/sources/weather_remote_source.dart' as _i12;
import '../../features/weather/domain/repository/weather_repository.dart' as _i13;
import '../../features/weather/presentation/viewmodels/weather_viewmodel.dart' as _i15;
import '../data/networking/http_client.dart' as _i8;
import '../data/stock/app_disk_cache.dart' as _i6;
import '../presentation/routing/app_router.dart' as _i3;
import 'app_module.dart' as _i19;
import 'network_module.dart' as _i20;

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
  gh.factory<String>(
    () => networkModule.apiBaseUrl,
    instanceName: 'base',
  );
  gh.singleton<_i6.AppDiskCache>(appModule.appDiskCache(gh<_i4.Box<dynamic>>()));
  gh.factory<_i7.BaseOptions>(
    () => networkModule.dioOptions(gh<String>(instanceName: 'base')),
    instanceName: 'base',
  );
  gh.singleton<_i7.Dio>(networkModule.dio(gh<_i7.BaseOptions>(instanceName: 'base')));
  gh.singleton<_i8.HttpClient>(networkModule.httpClient(gh<_i7.Dio>()));
  gh.singleton<_i9.SourceOfTruth<String, _i10.LanguageEnum>>(appModule.appLanguageLocalSource(gh<_i6.AppDiskCache>()));
  gh.singleton<_i9.SourceOfTruth<String, _i11.ThemeEnum>>(appModule.appThemeLocalSource(gh<_i6.AppDiskCache>()));
  gh.lazySingleton<_i12.WeatherRemoteSource>(() => _i12.WeatherRemoteSourceImpl(gh<_i8.HttpClient>()));
  gh.lazySingleton<_i13.WeatherRepository>(() => _i14.WeatherRepositoryImpl(gh<_i12.WeatherRemoteSource>()));
  gh.factory<_i15.WeatherViewmodel>(() => _i15.WeatherViewmodel(gh<_i13.WeatherRepository>()));
  gh.singleton<_i16.AppRepository>(_i17.AppRepositoryImpl(
    gh<_i9.SourceOfTruth<String, _i10.LanguageEnum>>(),
    gh<_i9.SourceOfTruth<String, _i11.ThemeEnum>>(),
  ));
  gh.singleton<_i18.AppViewmodel>(_i18.AppViewmodel(gh<_i16.AppRepository>()));
  return getIt;
}

class _$AppModule extends _i19.AppModule {}

class _$NetworkModule extends _i20.NetworkModule {}
