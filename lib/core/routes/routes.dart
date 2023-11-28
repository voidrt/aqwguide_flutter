import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/screens/credits_screen/credits_screen.dart';
import 'package:travel_seila/screens/home/home_screen.dart';
import 'package:travel_seila/screens/new_player/new_player_screen.dart';

class Routes {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomeScreen(),
        pageBuilder: defaultPageBuilder(const HomeScreen()),
      ),
      GoRoute(
        name: 'credits',
        path: '/credits',
        builder: (context, state) => CreditsScreen(),
        pageBuilder: defaultPageBuilder(CreditsScreen()),
      ),
      GoRoute(
        name: 'new player',
        path: '/new-player',
        builder: (context, state) => const NewPlayerScreen(),
        pageBuilder: defaultPageBuilder(const NewPlayerScreen()),
      ),
      GoRoute(
        name: 'boost',
        path: '/boost',
        builder: (context, state) => const HomeScreen(),
        pageBuilder: defaultPageBuilder(const HomeScreen()),
      ),
    ],
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder(
  Widget child,
) {
  return (BuildContext context, GoRouterState state) {
    return pageBuilderAnimation(
      context: context,
      state: state,
      child: child,
    );
  };
}

CustomTransitionPage pageBuilderAnimation({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    transitionDuration: const Duration(milliseconds: 300),
    child: child,
    key: state.pageKey,
    transitionsBuilder: (context, animation, secondary, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}
