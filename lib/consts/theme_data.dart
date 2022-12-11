import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDarkTheme ? const Color.fromARGB(255, 12, 34, 53) : Colors.white,
        primaryColor: Colors.blue,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: isDarkTheme ? Colors.deepPurple : Colors.white,
              brightness: isDarkTheme ? Brightness.dark : Brightness.light,
            ),
        cardColor: isDarkTheme ? Colors.black54 : Colors.white,
        canvasColor: isDarkTheme ? Colors.black : Colors.grey,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              colorScheme: isDarkTheme
                  ? const ColorScheme.dark()
                  : const ColorScheme.light(),
            ));
  }
}
