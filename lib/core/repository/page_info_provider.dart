import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/models/page_info_model.dart';

final FutureProviderFamily<PageModel, int> guidePagesModelProvider =
    FutureProvider.family<PageModel, int>(
  (
    ref,
    guidePage,
  ) async {
    final response = await rootBundle.loadString('assets/sample.json');
    final Map<String, dynamic> responseBody = jsonDecode(response)[guidePage];

    print(response);
    print(responseBody);

    return PageModel.fromMap(responseBody);
  },
);
