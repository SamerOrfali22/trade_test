import 'package:auto_route/auto_route.dart';
import 'package:weather_app/features/search/presentation/pages/search_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        //* App Routes *//
        AutoRoute(path: '/', page: SearchRoute.page),
      ];
}
