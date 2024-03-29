import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/routes/routes.dart';
import './themes/app_theme.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
// ignore: depend_on_referenced_packages
import 'package:stack_trace/stack_trace.dart' as stack_trace;

void main() {
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  runApp(
    const ProviderScope(
      child: AQWGuide(),
    ),
  );

  doWhenWindowReady(() {
    appWindow.title = 'AQW Guide';
    appWindow.size = const Size(1169, 641);
    appWindow.minSize = const Size(900, 480);
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

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
