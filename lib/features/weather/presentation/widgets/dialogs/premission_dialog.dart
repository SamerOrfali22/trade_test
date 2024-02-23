import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/resources/resources.dart';

class PermissionDialog extends StatefulWidget {
  const PermissionDialog({Key? key}) : super(key: key);

  static void show({BuildContext? context}) => showDialog(
        context: context ?? Resources.appContext!,
        builder: (context) => PermissionDialog(),
      );

  @override
  State<PermissionDialog> createState() => _PermissionDialogState();
}

class _PermissionDialogState extends State<PermissionDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Location Permissions', style: TextStyle(color: context.colors.onPrimaryContainer)),
      content: Text(
        'Location permissions are required for this app. Please enable them in the settings\n\n'
        'The App will not be able to give your current location weather without location permission.',
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: <Widget>[
        TextButton(
          child: Text('Open settings', style: TextStyle(fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).pop();
            Geolocator.openAppSettings();
          },
        ),
        TextButton(
          child: Text(
            'Cancel',
            style: TextStyle(color: context.colors.outline),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
