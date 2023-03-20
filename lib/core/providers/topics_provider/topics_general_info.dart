import 'package:flutter_riverpod/flutter_riverpod.dart';

final topicsInfoProvider = Provider(
  (ref) {
    return [
      'New Player',
      'Boost',
      'Farming List',
      'Reputation',
      'Credits',
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
    ];
  },
);
