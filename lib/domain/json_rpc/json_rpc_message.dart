// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part "json_rpc_message.freezed.dart";

// @freezed
// class JsonRpcMessage with _$JsonRpcMessage {
//   const factory JsonRpcMessage(
//       {required int id,
//       required String method,
//       required Map<String, String> params}) = _JsonRpcMessage;
// }

import 'dart:convert';

import 'package:flutter/services.dart';

class JsonRpcMessage {
  final int id;
  final String method;
  final Map<String, String> params;

  const JsonRpcMessage(
      {required this.id, required this.method, required this.params});

  String toJson() {
    return jsonEncode(this);
  }
}
