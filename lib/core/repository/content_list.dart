import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<List<String>> contentsListProvider = Provider(
  (ref) => [
    'Home',
    'Credits',
    'Farming List',
    'Reputation',
    'New Player',
    'Classes',
    'Items',
    'Story',
    'ACs',
    'Gold',
    'Boosts',
    'Badges',
    'Acronyms',
    'Enhancing',
    'Membership',
    'Ultra Bosses',
  ],
);
