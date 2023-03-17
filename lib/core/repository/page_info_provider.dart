import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final FutureProviderFamily<Map<String, dynamic>, String> guidePagesInfo =
    FutureProvider.family<Map<String, dynamic>, String>(
  (
    ref,
    guidePage,
  ) async {
    Uri uri = Uri(
      scheme: 'https',
      host: '6413ac85c469cff60d682e72.mockapi.io',
      path: '/aqwguide/info/aqwiki',
    );
    final response = await http.get(uri);

    return jsonDecode(response.body);
  },
);
