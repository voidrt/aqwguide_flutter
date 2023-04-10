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

final Provider<List<String>> contentRoutesProvider = Provider(
  (ref) {
    final list = ref.watch(availableContentProvider);

    for (var element in list) {
      element.toLowerCase();
    }
    return list;
  },
);
