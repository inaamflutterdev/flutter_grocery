import 'package:flutter/material.dart';
import 'package:flutter_grocery/provider/dark_theme_provider.dart';
import 'package:flutter_grocery/services/dark_theme_pref.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: const Text("Theme"),
          secondary: Icon(themeState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          value: themeState.getDarkTheme,
          onChanged: (bool value) {
            setState(() {
              themeState.setDarkTheme = value;
            });
          },
        ),
      ),
    );
  }
}
