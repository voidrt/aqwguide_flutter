import 'package:flutter/material.dart';
import './core/routes.dart';
import './screens/home/home_screen.dart';
import './themes/app_theme.dart';

void main() {
  runApp(const AQWGuide());
}

class AQWGuide extends StatelessWidget {
  const AQWGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.materialRoutes,
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}
