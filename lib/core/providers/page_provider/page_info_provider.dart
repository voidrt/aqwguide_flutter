import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:http/http.dart';
import 'package:travel_seila/core/constants/constants.dart';

final guidePageModelProvider = FutureProviderFamily<PageModel, String>(
  (ref, pageName) async {
    final Response response = await get(
      Uri.parse('${Constants.aqwikiURL}$pageName'),
    );

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(
        utf8.decode(response.bodyBytes),
      );

      dynamic pageModel = PageModel.fromMap(responseJson);

      return pageModel;
    }
    throw Exception(response.reasonPhrase);
  },
);
