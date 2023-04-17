import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:device_preview/device_preview.dart";

import 'screens/login_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData theme = ThemeData(
      primarySwatch: Colors.red,
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
          bodySmall: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20.0,
              color: Color.fromARGB(255, 109, 108, 108))));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'food app',
        theme: theme,
        home: LoginPage());
  }
}
