import 'package:go_router/go_router.dart';
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
      ),
      GoRoute(
        name: 'new player',
        path: '/new-player',
        builder: (context, state) => const NewPlayerScreen(),
      ),
      GoRoute(
        name: 'boost',
        path: '/boost',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
