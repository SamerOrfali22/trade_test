import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';
import 'package:weather_app/gen/assets.gen.dart';

class AppBackgroundWidget extends StatelessWidget {
  const AppBackgroundWidget({Key? key, required this.child}) : super(key: key);

  AppViewmodel get appViewmodel => GetIt.I<AppViewmodel>();

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            appViewmodel.theme.isLight ? Assets.images.dayBackground.path : Assets.images.nightBackground.path,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
