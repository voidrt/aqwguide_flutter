import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './core/routes.dart';
import './screens/home/home_screen.dart';
import './themes/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: AQWGuide()));
}

class AQWGuide extends StatelessWidget {
  const AQWGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.materialRoutes,
      theme: AppTheme.appTheme,
      title: 'AQW Guide',
      home: const HomeScreen(),
    );
  }
}
