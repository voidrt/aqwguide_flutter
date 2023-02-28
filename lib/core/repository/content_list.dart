import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<Map<String, String>> topicsRoutesProvider = Provider(
  (ref) => {
    'New Player': '/',
    'Boost': '/',
    'Farming List': '/',
    'Reputation': '/',
    'Credits': '/',
    'Classes': '/',
    'Items': '/',
    'Story': '/',
    'ACs': '/',
    'Gold': '/',
    'Boosts': '/',
    'Badges': '/',
    'Acronyms': '/',
    'Enhancing': '/',
    'Membership': '/',
    'Ultra Bosses': '/',
  },
);
