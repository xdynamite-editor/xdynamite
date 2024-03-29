import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:xdynamite/app/utils/std-io.dart';
import 'package:xdynamite/domain/json_rpc/json_rpc_message.dart';
import 'package:xdynamite/domain/lsp/lsp_client.dart';

class ClangLSPClient implements LanguageServerClient {
  final int _clientId;
  final String _clientName;
  late Process _lspProcess;

  ClangLSPClient(this._clientId, this._clientName) {
    _startLanguageServerProcess();
  }

  void _startLanguageServerProcess() async {
    final process = await Process.start('clangd', const []);

    // For debugging
    // stdout.addStream(process.stdout);
    stderr.addStream(process.stderr);

    _lspProcess = process;

    var message = const JsonRpcMessage(id: 1, method: "initialize", params: {
      "initializationOptions": {},
      "rootUri": "file:////home/bazil/Desktop/algo-ds/",
      "capabilities": {},
      "rootPath": "/home/bazil/Desktop/algo-ds/",
      "processId": 12345
    });

    sendMessage(message);

    await for (var val in _lspProcess.stdout) {
      print(String.fromCharCodes(val));
    }
  }

  @override
  void sendMessage(JsonRpcMessage message) async {
    final jsonString = jsonEncode(message);
    final header = "Content-Length: " + jsonString.length.toString() + "\n\n";

    _lspProcess.stdin.write(header);
    _lspProcess.stdin.write(jsonString);
  }
}
