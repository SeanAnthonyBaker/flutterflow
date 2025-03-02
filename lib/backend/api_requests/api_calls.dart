import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetGeminiResponseCall {
  static Future<ApiCallResponse> call({
    String? apiKey = 'AIzaSyD5BdFjsYUy_hiNZ9Bi8RoXS2PLxVYK45Y',
    String? prompt =
        '\"is the response to this question used of training Gemini 2.0?',
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [
    {
      "parts": [
        {
          "text": "${escapeStringForJson(prompt)}"
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getGeminiResponse',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=${apiKey}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Tyoe': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? geminiResponseString(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
  static List? geminiResponseJson(dynamic response) => getJsonField(
        response,
        r'''$.candidates[:].content.parts''',
        true,
      ) as List?;
}

class CheckNLLMresponseCall {
  static Future<ApiCallResponse> call({
    String? apiKey = 'AIzaSyD5BdFjsYUy_hiNZ9Bi8RoXS2PLxVYK45Y',
    String? prompt = '\"who are you?\"',
    String? screenImage = '',
    String? searchFor = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [
    {
      "parts": [
        {
          "text": "${escapeStringForJson(prompt)}"
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkNLLMresponse',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=${apiKey}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Tyoe': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? geminiResponseString(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
  static List? geminiResponseJson(dynamic response) => getJsonField(
        response,
        r'''$.candidates[:].content.parts''',
        true,
      ) as List?;
}

class GetSuperbaseDocumentsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSuperbaseDocuments',
      apiUrl:
          'https://ryeoceystuqrdynbtsvt.supabase.co/rest/v1/rpc/build_document_tree',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ5ZW9jZXlzdHVxcmR5bmJ0c3Z0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU3MzM0NTQsImV4cCI6MjA1MTMwOTQ1NH0.-A7yLW7ca1G3i8XOtNsU4Yy69NIc2f3I__BSSKyrA-U',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic documentJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class UpdateDocuemntTextCall {
  static Future<ApiCallResponse> call({
    int? nodeID = 1,
    String? text = 'test case',
  }) async {
    final ffApiRequestBody = '''
{
  "p_nodeid": ${nodeID},
  "p_new_text": "${escapeStringForJson(text)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update DocuemntText',
      apiUrl:
          'https://ryeoceystuqrdynbtsvt.supabase.co/rest/v1/rpc/update_node_text',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ5ZW9jZXlzdHVxcmR5bmJ0c3Z0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU3MzM0NTQsImV4cCI6MjA1MTMwOTQ1NH0.-A7yLW7ca1G3i8XOtNsU4Yy69NIc2f3I__BSSKyrA-U',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic documentJson(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetNotebookLLMresponseCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "chrome_driver_path": "https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getNotebookLLMresponse',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetUpNotebookLLMCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SetUpNotebookLLM',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {
        'notebook_id':
            "https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583",
        'llmquery': "What is the best win strategy. ",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FastAPITestCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "chrome_driver_path": "https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FastAPITest',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app/test',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NotebookLLMDriverSetupCall {
  static Future<ApiCallResponse> call({
    String? chromeDriverPath =
        'https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'NotebookLLM Driver Setup',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app/driver/setup',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {
        'notebook_id':
            "https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NotebookLLMDriverCloseCall {
  static Future<ApiCallResponse> call({
    String? chromeDriverPath =
        'https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'NotebookLLM Driver Close',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app/driver/close',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NotebookLLMQueryCall {
  static Future<ApiCallResponse> call({
    String? chromeDriverPath =
        'https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'NotebookLLM Query',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app/query/execute',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {
        'notebook_id':
            "https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583",
        'llmquery': "Expliain the staff augmentation strategy",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? lLMAnswer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result''',
      ));
}

class SetUpNotebookLLCopyCopyCopyCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "chrome_driver_path": "https://notebooklm.google.com/notebook/142f2ac0-b94c-4a24-ab58-eaf32e4cb583"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SetUpNotebookLL Copy Copy Copy',
      apiUrl: 'https://97c9-81-156-208-52.ngrok-free.app/driver/setup',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Ngrok-Skip-Browser-Warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
