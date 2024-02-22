import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/localizations_generated/l10n.dart';

/// A mixin that provides various context-dependent variables to the widget tree.
mixin ContextStateMixin<T extends StatefulWidget> on State<T> {
  /// The current theme of the app.
  late ThemeData theme;

  /// The current text theme of the app.
  late TextTheme textTheme;

  /// The current color scheme of the app.
  late ColorScheme colors;

  /// The current media query data of the app.
  late MediaQueryData mediaQuery;

  /// The padding of the current display screen.
  late EdgeInsets padding;

  /// The view padding of the current display screen.
  late EdgeInsets viewPadding;

  /// The localizations of the app.
  late AppLocalizations localizations;

  /// Whether to skip initializing the context-dependent variables.
  // ps: this is workaround just to prevent call init in app page because app page context don't have material context.
  bool get skipInit => false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!skipInit) {
      _init(context);
    }
  }

  /// Initializes the variables.
  void _init(BuildContext context) {
    localizations = context.localizations;
    mediaQuery = context.mediaQuery;
    padding = mediaQuery.padding;
    viewPadding = mediaQuery.viewPadding;
    theme = context.theme;
    textTheme = theme.textTheme;
    colors = theme.colorScheme;
  }
}
