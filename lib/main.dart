import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/routes/routes.dart';
import './themes/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: AQWGuide()));
}
// ! TEXTO COM LINK AO INVES DE SEI LA

// ? WIDGET DE TEXTO COM LINK CUSTOM

class AQWGuide extends StatelessWidget {
  const AQWGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      routerConfig: Routes.appRouter,
      title: 'AQW Guide',
    );
  }
}
