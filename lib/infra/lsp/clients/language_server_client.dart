import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:xdynamite/app/utils/std-io.dart';
import 'package:xdynamite/domain/json_rpc/json_rpc_message.dart';

class LanguageServerClient {
  final int _clientId;
  final String _clientName;
  Process? _lspProcess;

  LanguageServerClient(this._clientId, this._clientName) {
    _getLspProcess();
  }

  void _getLspProcess() async {
    _lspProcess = await _runLanguageServer();
  }

  void init() async {}

  Future<Process> _runLanguageServer() async {
    final process = await Process.start('clangd', const []);
    stdout.addStream(process.stdout);
    stderr.addStream(process.stderr);

    var cMessage = '''Content-Length: 228
        
        {"method": "initialize", "jsonrpc": "2.0", "id": 1, "params": {"initializationOptions": {}, "rootUri": "file:////home/bazil/Desktop/algo-ds/", "capabilities": {}, "rootPath": "/home/bazil/Desktop/algo-ds/", "processId": 12345}}''';

    process.stdin.write("\n\n" + cMessage + "\n\n");

    return process;
    // stdout.write("Hello");

    // await for (var value in name) {
    //   print(value);
    // }
    // await stdout.addStream(process.stdout);
    // await  stdout.
    // print("Clangd strated");
    // final resultStdoutFuture = process.stdout.transform(const Utf8Decoder());
    // // .transform(const LineSplitter())
    // // .toList();

    // print("REad");

    // print(resultStdoutFuture);
    // // await process.stdin.addStream(message.transform(Decoder))
    // print([...resultStdoutFuture]);

    // await process.stdin
    //     .addStream(File('$homeDir/.config/qv2ray/vcore/config.json').openRead());
    // await process.stdin.close();
  }

  String createMessage(String json) {
    var header = "Content-Length: " + json.length.toString() + "\n\n";
    return header + json;
  }
}

void startLanguageClient() {
  LanguageServerClient client = LanguageServerClient(1, "Zeta Code");
  client.init();
}
