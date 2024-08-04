import 'package:chatapp/themes/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData getThemeDate() {
    return _themeData;
  }

  bool isDark() {
    if (_themeData == lightMode) {
      return false;
    } else {
      return true;
    }
  }

  void setTheme(ThemeData newTheme) {
    _themeData = newTheme;
    notifyListeners();
  }

  void toogleTheme() {
    if (_themeData == lightMode) {
      setTheme(darkMode);
    } else {
      setTheme(lightMode);
    }
  }
}
