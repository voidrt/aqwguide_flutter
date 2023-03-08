import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/guide_info.dart';

final Provider<Map<String, dynamic>> newPlayerInfo =
    Provider((ref) => jsonDecode(jsonInfo)['newPlayer']);
