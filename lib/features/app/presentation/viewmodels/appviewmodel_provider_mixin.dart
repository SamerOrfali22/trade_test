import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';

/// A mixin that provides an instance of [AppViewmodel] to the widget tree.
mixin AppViewmodelProviderMixin<T extends StatefulWidget> on State<T> {
  /// The instance of [AppViewmodel] provided by this mixin.
  final AppViewmodel appViewmodel = GetIt.I();
}
