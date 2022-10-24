import 'package:xdynamite/domain/json_rpc/json_rpc_message.dart';

abstract class LanguageServerClient {
  void sendMessage(JsonRpcMessage message);
}
