import 'package:flutter/material.dart';
import 'package:nueva_app/src/config/router/app_router.dart';
import 'package:nueva_app/src/config/theme/app_theme.dart';
import 'package:nueva_app/src/presentation/headers/headers_page.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Diseños App',
    );
  }
}
