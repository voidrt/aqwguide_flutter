import 'package:flutter_riverpod/flutter_riverpod.dart';

final topicsInfoProvider = Provider((ref) {
  return {
    'New Player': '/new-player',
    'Boost': '/a',
    'Farming List': '/b',
    'Reputation': '/c',
    'Credits': '/d',
    'Classes': '/e',
    'Items': '/f',
    'Story': '/g',
    'ACs': '/h',
    'Gold': '/i',
    'Boosts': '/j',
    'Badges': '/k',
    'Acronyms': '/l',
    'Enhancing': '/m',
    'Membership': '/n',
    'Ultra Bosses': '/o',
  };
});
