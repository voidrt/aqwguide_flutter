import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/guide_info.dart';

final ProviderFamily<Map<String, dynamic>, String> guidePagesInfo =
    Provider.family<Map<String, dynamic>, String>(
  (ref, guidePage) {
    final json = jsonDecode(jsonInfo);
    return json[guidePage];
  },
);
