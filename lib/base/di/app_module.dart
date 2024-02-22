import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_app/base/data/stock/app_disk_cache.dart';
import 'package:weather_app/base/data/stock/disk_serializer.dart';
import 'package:weather_app/base/data/stock/hive_disk_cache.dart';
import 'package:weather_app/base/presentation/routing/app_router.dart';
import 'package:weather_app/features/app/data/sources/locale_source/language_local_source.dart';
import 'package:weather_app/features/app/data/sources/locale_source/theme_locale_source.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';
import 'package:weather_app/features/app/presentation/ui-models/theme_enum.dart';

@module
abstract class AppModule {
  @singleton
  AppRouter getAppRouter() => AppRouter();

  @singleton
  FlutterSecureStorage getSecureStorage() => const FlutterSecureStorage();

  @preResolve
  @singleton
  Future<Box> appCacheBox() async {
    // Create a box collection
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    return Hive.openBox('base_sot_box');
  }

  @singleton
  AppDiskCache appDiskCache(Box box) => HiveDiskCache(box);

  @singleton
  LanguageLocalSource appLanguageLocalSource(AppDiskCache appCache) => appCache.createCache(
        keyPrefix: 'app_language',
        serializer: DiskSerializer.forPrimitive(
          toDisk: (language) => language.name,
          fromDisk: (diskData) => LanguageEnum.values.byName(diskData),
        ),
      );

  @singleton
  ThemeLocalSource appThemeLocalSource(AppDiskCache appCache) => appCache.createCache(
        keyPrefix: 'app_theme',
        serializer: DiskSerializer.forPrimitive(
          toDisk: (theme) => theme.name,
          fromDisk: (diskData) => ThemeEnum.values.byName(diskData),
        ),
      );
}
