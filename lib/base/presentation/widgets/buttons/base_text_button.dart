import 'package:flutter/material.dart';
import 'package:weather_app/base/presentation/widgets/buttons/loadable_widget.dart';

class BaseTextButton extends StatelessWidget {
  const BaseTextButton({
    required this.onPressed,
    required this.label,
    this.child,
    this.isEnabled = true,
    this.isLoading = false,
    this.isFullWidth = true,
    super.key,
  });

  final VoidCallback onPressed;
  final bool isEnabled;
  final bool isLoading;
  final String label;
  final bool isFullWidth;
  final Widget? child;

  bool get _isEnabled => isEnabled && !isLoading;

  @override
  Widget build(BuildContext context) {
    final button = TextButton(
      onPressed: _isEnabled ? () => _onPressed(context) : null,
      child: LoadableWidget(isLoading: isLoading, child: child ?? Text(label)),
    );

    if (isFullWidth) {
      return SizedBox(width: double.infinity, child: button);
    }

    return button;
  }

  void _onPressed(BuildContext context) {
    FocusScope.of(context).unfocus();
    onPressed();
  }
}
