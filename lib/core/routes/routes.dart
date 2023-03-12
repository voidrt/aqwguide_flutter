import 'package:go_router/go_router.dart';
import 'package:travel_seila/screens/home/home_screen.dart';
import 'package:travel_seila/screens/widgets/sidemenu/sidemenu.dart';

class Routes {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return const SideMenu();
        },
        routes: [
          GoRoute(
            name: 'home',
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            name: 'new player',
            path: '/new-player',
            builder: (context, state) => const HomeScreen(),
          ),
        ],
      )
    ],
  );
}
