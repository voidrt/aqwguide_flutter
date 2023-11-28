import 'package:flutter_riverpod/flutter_riverpod.dart';

final availableContentProvider = Provider(
  (ref) {
    return [
      'Home',
      'Credits',
      'New Player',
      'Boost',
      'Farming List',
      'Reputation',
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
      'Wheel of Doom',
    ];
  },
);
