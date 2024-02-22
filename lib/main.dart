import 'dart:async';

import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:weather_app/base/di/di_entry_point.dart';
import 'package:weather_app/features/app/presentation/pages/app_page.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await _initSdks();
      runApp(const AppPage());
    },
    (exception, stackTrace) => Logger.fatal(error: exception, stackTrace: stackTrace),
  );
}

Future<void> _initSdks() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Logger.init();

  await Future.wait([initDependencyInjection()]);
}
