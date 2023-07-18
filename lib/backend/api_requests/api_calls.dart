import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class JwtCall {
  static Future<ApiCallResponse> call({
    String? emailAddress = '',
    String? password = '',
  }) {
    final body = '''
{
  "mail": "${emailAddress}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'JWT',
      apiUrl:
          'https://us-central1-colmena-d4b91.cloudfunctions.net/generateToken1',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer \${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class WhatsAppCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? message = '',
  }) {
    final body = '''
{
  "phoneNumber": "${phoneNumber}",
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'WhatsApp',
      apiUrl:
          'https://us-central1-colmena-d4b91.cloudfunctions.net/sendWhatsAppNotification',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
