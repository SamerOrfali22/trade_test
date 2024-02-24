import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/base/presentation/widgets/base_sheet.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';
import 'package:weather_app/features/app/presentation/ui-models/theme_enum.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  AppViewmodel get appViewmodel => GetIt.I<AppViewmodel>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BaseSheet.show(
          context: context,
          // heightFactor: .5,
          padding: EdgeInsets.zero,
          showDragHandle: true,
          backgroundColor: context.colors.tertiary,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60, top: 20, left: 20, right: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localizations.language,
                  style: context.headlineMedium?.copyWith(color: context.colors.onPrimary),
                ),
                SizedBox(height: 8.h),
                DropdownButtonFormField<LanguageEnum>(
                  style: context.textTheme.bodyMedium,
                  value: appViewmodel.language,
                  items: LanguageEnum.values
                      .map(
                        (it) => DropdownMenuItem(
                          value: it,
                          child: Text(it.name),
                        ),
                      )
                      .toList(),
                  onChanged: (lang) {
                    appViewmodel.changeLanguage(lang!);
                    context.popRoute();
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  context.localizations.theme,
                  style: context.headlineMedium?.copyWith(color: context.colors.onPrimary),
                ),
                SizedBox(height: 8.h),
                DropdownButtonFormField<ThemeEnum>(
                  decoration: InputDecoration(
                    label: Text('Theme'),
                    labelStyle: context.textTheme.titleMedium,
                  ),
                  style: context.textTheme.bodyMedium,
                  value: appViewmodel.theme,
                  items: ThemeEnum.values
                      .map(
                        (it) => DropdownMenuItem(
                          value: it,
                          child: Text(it.name),
                        ),
                      )
                      .toList(),
                  onChanged: (theme) {
                    appViewmodel.changeTheme(theme!);
                    context.popRoute();
                  },
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.colors.onPrimary,
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Icon(Icons.settings, color: context.colors.tertiary),
      ),
    );
  }
}
