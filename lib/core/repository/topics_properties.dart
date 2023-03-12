import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/topics_general_info.dart';

final Provider<List<String>> contentNamesProvider = Provider(
  (ref) => ref.watch(topicsInfoProvider),
);

final Provider<List<String>> contentRoutesProvider = Provider(
  (ref) {
    final list = ref.watch(topicsInfoProvider);
    for (var element in list) {
      element.toLowerCase();
    }
    return list;
  },
);
