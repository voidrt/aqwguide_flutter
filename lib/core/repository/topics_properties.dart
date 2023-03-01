import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/topics_general_info.dart';

final Provider<List<String>> contentNamesProvider = Provider(
  (ref) => ref.watch(topicsInfoProvider).keys.toList(),
);

final Provider<List<String>> contentRoutesProvider = Provider(
  (ref) => ref.watch(topicsInfoProvider).values.toList(),
);
