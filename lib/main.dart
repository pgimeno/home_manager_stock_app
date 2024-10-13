import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:home_manager_stock_app/pages/login/views/login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => FTheme(
              data: FThemes.zinc.light,
              child: child!,
            ),
        home: const LoginScreen());
  }
}

/*

AdaptiveTheme(
      light: ThemeData.light(useMaterial3: true),
      dark: ThemeData.dark(useMaterial3: true),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: MyHomePage(),
      ),
    ); */

    /*MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => FTheme(
              data: FThemes.zinc.light,
              child: child!,
            ),
        home: const LoginScreen()); */