import 'package:flutter/material.dart';
import 'package:in_app_update/in_app_update.dart';

class AppUpdateService {
  final BuildContext context;
  final GlobalKey<ScaffoldState> scaffoldKey;

  AppUpdateService({
    required this.context,
    required this.scaffoldKey,
  });

  void initialise() {
    _checkForUpdate();
  }

  void _checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      if (info.updateAvailability == UpdateAvailability.updateAvailable) {
        _update();
      }
    }).catchError((e) {
      _showSnack(e.toString());
    });
  }

  void _update() async {
    await InAppUpdate.startFlexibleUpdate();
    InAppUpdate.completeFlexibleUpdate().then((_) {}).catchError((e) {
      _showSnack(e.toString());
    });
  }

  void _showSnack(String text) {
    if (scaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(content: Text(text)));
    }
  }
}

