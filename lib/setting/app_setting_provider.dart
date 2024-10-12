import 'package:flutter/material.dart';

class AppSettingProvider with ChangeNotifier{
  bool _notification = false;

  bool get notification => _notification;

  void toggleNotification(){
    _notification = !_notification;
    notifyListeners();
  }
}