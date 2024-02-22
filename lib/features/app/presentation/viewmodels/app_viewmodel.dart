import 'package:injectable/injectable.dart';
import 'package:weather_app/features/app/presentation/viewmodels/base_app_viewmodel.dart';

/// App-level viewmodel that holds the app's state.
@singleton
class AppViewmodel extends BaseAppViewmodel {
  /// Creates a new instance of [AppViewmodel].
  AppViewmodel(super.appRepository);

  /// The logger tag for this view model.
  @override
  String get loggerTag => 'AppViewmodel';
}
