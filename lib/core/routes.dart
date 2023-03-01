import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/home_screen.dart';
import 'package:travel_seila/screens/new_player/new_player_screen.dart';

class Routes {
  static const String newPlayer = '/new-player';
  static const String boost = '/a';
  static const String farmingList = '/b';
  static const String reputation = '/c';
  static const String credits = '/d';
  static const String classes = '/e';
  static const String items = '/f';
  static const String story = '/g';
  static const String acs = '/h';
  static const String gold = '/i';
  static const String boosts = '/j';
  static const String badges = '/k';
  static const String acronyms = '/l';
  static const String enhancing = '/m';
  static const String nembership = '/n';
  static const String ultraBosses = '/o';

  static Map<String, Widget Function(BuildContext)> materialRoutes = {
    newPlayer: (ctx) => const NewPlayerScreen(),
    boost: (ctx) => const HomeScreen(),
    farmingList: (ctx) => const HomeScreen(),
    reputation: (ctx) => const HomeScreen(),
    credits: (ctx) => const HomeScreen(),
    classes: (ctx) => const HomeScreen(),
    items: (ctx) => const HomeScreen(),
    story: (ctx) => const HomeScreen(),
    acs: (ctx) => const HomeScreen(),
    gold: (ctx) => const HomeScreen(),
    boosts: (ctx) => const HomeScreen(),
    badges: (ctx) => const HomeScreen(),
    acronyms: (ctx) => const HomeScreen(),
    enhancing: (ctx) => const HomeScreen(),
    nembership: (ctx) => const HomeScreen(),
    ultraBosses: (ctx) => const HomeScreen(),
  };
}
