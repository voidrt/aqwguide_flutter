import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/content_list.dart';

final topicsStringProvider = Provider((ref) {
  final contents = ref.watch(topicsRoutesProvider);
  return contents.keys.toList();
});
