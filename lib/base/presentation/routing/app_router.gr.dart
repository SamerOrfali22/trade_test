// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ForecastRoute.name: (routeData) {
      final args = routeData.argsAs<ForecastRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ForecastPage(
          key: args.key,
          viewmodel: args.viewmodel,
        ),
      );
    },
    WeatherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WeatherPage(),
      );
    },
  };
}

/// generated route for
/// [ForecastPage]
class ForecastRoute extends PageRouteInfo<ForecastRouteArgs> {
  ForecastRoute({
    Key? key,
    required ForecastViewmodel viewmodel,
    List<PageRouteInfo>? children,
  }) : super(
          ForecastRoute.name,
          args: ForecastRouteArgs(
            key: key,
            viewmodel: viewmodel,
          ),
          initialChildren: children,
        );

  static const String name = 'ForecastRoute';

  static const PageInfo<ForecastRouteArgs> page = PageInfo<ForecastRouteArgs>(name);
}

class ForecastRouteArgs {
  const ForecastRouteArgs({
    this.key,
    required this.viewmodel,
  });

  final Key? key;

  final ForecastViewmodel viewmodel;

  @override
  String toString() {
    return 'ForecastRouteArgs{key: $key, viewmodel: $viewmodel}';
  }
}

/// generated route for
/// [WeatherPage]
class WeatherRoute extends PageRouteInfo<void> {
  const WeatherRoute({List<PageRouteInfo>? children})
      : super(
          WeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'WeatherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
