import 'package:flutter/material.dart';
import 'package:nueva_app/src/config/theme/app_theme.dart';
import 'package:nueva_app/src/presentation/headers/headers_page.dart';
import 'package:nueva_app/src/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Diseños App',
      // home: HeadersPage()
      home: HomeScreen()
    );
  }
}
