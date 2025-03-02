import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

dynamic getHierachy() {
  return {
    "text": "...",
    "order": 1,
    "title": "Pilkington",
    "nodeID": 0,
    "children": [
      {
        "text": "...",
        "order": 1,
        "title": "Executive Summary",
        "nodeID": 1,
        "children": [],
        "selected": false,
        "created_at": "2025-01-13 13:11:36.463299+00",
        "parentNodeID": 0
      }
    ],
    "selected": false,
    "created_at": "2025-01-13 13:11:36.463299+00",
    "parentNodeID": -1
  };

  // Closing brace for the Dart Map
}

String? setPrompt(
  String? context,
  String? clipboard,
) {
  return '$context: $clipboard';
}

String? jsonToString(dynamic jsonDocument) {
  String removeFirstAndLast(dynamic jsonDocument) {
    // Convert the JSON object to a string.
    String jsonString = jsonDocument.toString();

    // Remove the first and last characters of the string.
    String result = jsonString.substring(1, jsonString.length - 1);

    // Return the result.
    return result;
  }
}

dynamic cleanJsonDocument(dynamic jsonDocument) {
  try {
    String jsonString = jsonEncode(jsonDocument);
    String cleanedString = jsonString
            .replaceAll('\r', '') // Remove carriage returns
            .replaceAll('\n', '') // Remove newlines
            .replaceAll('\t', '') // Remove tabs
            .replaceAll('', '') // Remove line separators (U+2028)
            .replaceAll('', '') // Remove paragraph separators (U+2029)
        ;
    dynamic cleanedJson = jsonDecode(cleanedString);
    return cleanedJson;
  } catch (e) {
    print('Error cleaning JSON: $e');
    return jsonDocument; // Or return null, or throw an exception, depending on your error handling strategy
  }
}

bool? opposite(bool? boolianValue) {
  if (boolianValue == null) {
    return null; // Or return a default value, like false
  }
  return !boolianValue;
}
