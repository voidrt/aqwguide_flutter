import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/home_screen.dart';

class Routes {
  static const homeScreen = '/';

  static Map<String, Widget Function(BuildContext)> materialRoutes = {
    'New Player': (ctx) => const HomeScreen(),
    'Boost': (ctx) => const HomeScreen(),
    'Farming List': (ctx) => const HomeScreen(),
    'Reputation': (ctx) => const HomeScreen(),
    'Credits': (ctx) => const HomeScreen(),
    'Classes': (ctx) => const HomeScreen(),
    'Items': (ctx) => const HomeScreen(),
    'Story': (ctx) => const HomeScreen(),
    'ACs': (ctx) => const HomeScreen(),
    'Gold': (ctx) => const HomeScreen(),
    'Boosts': (ctx) => const HomeScreen(),
    'Badges': (ctx) => const HomeScreen(),
    'Acronyms': (ctx) => const HomeScreen(),
    'Enhancing': (ctx) => const HomeScreen(),
    'Membership': (ctx) => const HomeScreen(),
    'Ultra Bosses': (ctx) => const HomeScreen(),
  };
}
