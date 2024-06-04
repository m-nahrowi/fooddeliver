import 'package:flutter/material.dart';
import 'package:fooddeliver/themes/dark_mode.dart';
import 'package:fooddeliver/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themData) {
    _themeData = themData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode){
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }


}