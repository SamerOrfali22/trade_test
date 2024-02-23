import 'package:injectable/injectable.dart';
import 'package:weather_app/features/app/presentation/ui-models/theme_enum.dart';
import 'package:weather_app/features/app/presentation/viewmodels/base_app_viewmodel.dart';

/// App-level viewmodel that holds the app's state.
@singleton
class AppViewmodel extends BaseAppViewmodel {
  AppViewmodel(super.appRepository);


  @override
  void onInit() {
    super.onInit();

    ///change the theme based if it's day or night for the weather
    final hour = DateTime.now().hour;
    final dayTime = hour >= 6 && hour < 18;
    changeTheme(dayTime ? ThemeEnum.Light : ThemeEnum.Dark);
  }

  /// The logger tag for this view model.
  @override
  String get loggerTag => 'AppViewmodel';
}
