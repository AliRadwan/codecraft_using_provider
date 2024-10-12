import 'package:flutter/material.dart';

class AppSettingProvider with ChangeNotifier{
  bool _notification = false;
  bool _autoSyncEnabled = false;

  bool get notification => _notification;
  bool get autoSyncEnabled => _autoSyncEnabled;


  void toggleNotification(){
    _notification = !_notification;
    notifyListeners();
  }


  void toggleAutoSync(){
    _autoSyncEnabled = !_autoSyncEnabled;
    notifyListeners();
  }
}