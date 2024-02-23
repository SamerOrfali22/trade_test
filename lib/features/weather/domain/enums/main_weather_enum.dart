import 'package:weather_app/gen/assets.gen.dart';

enum MainWeatherEnum {
  Clouds('Clouds'),
  Clear('Clear'),
  Rain('Rain');

  final String name;

  const MainWeatherEnum(this.name);

  String get icon => switch (this) {
        MainWeatherEnum.Clouds => Assets.icons.cloudIcon,
        MainWeatherEnum.Clear => Assets.icons.sunnyIcon,
        MainWeatherEnum.Rain => Assets.icons.rainyIcon,
      };
}
