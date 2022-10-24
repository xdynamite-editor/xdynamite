import 'package:text_editor/domain/json_rpc/json_rpc_message.dart';

abstract class LanguageServerClient {
  void sendMessage(JsonRpcMessage message);
}
