import 'package:flutter/material.dart';

class AppThemeProvider with ChangeNotifier{
  bool _isDark = false;
  bool get isDark => _isDark;

  ThemeData get currentTheme => _isDark? ThemeData.dark() : ThemeData.light();

  void toggleTheme(){
    _isDark = !_isDark;
    notifyListeners();
  }
}