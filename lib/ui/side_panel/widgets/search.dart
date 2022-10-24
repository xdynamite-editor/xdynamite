import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/domain/json_rpc/json_rpc_message.dart';
import 'package:text_editor/infra/lsp/clients/clang_client/clang_client.dart';
import 'package:text_editor/infra/lsp/clients/language_server_client.dart';
import 'package:text_editor/ui/controls/custom_text_button.dart';
import 'package:text_editor/ui/widgets/spacer_y.dart';

late ClangLSPClient client;

void startLanguageClient() {
  client = ClangLSPClient(1, "Z-Code");
}

void sendInitMessage() {
  var message = new JsonRpcMessage(id: 1, method: "initialize", params: {
    "initializationOptions": {},
    "rootUri": "file:////home/bazil/Desktop/algo-ds/",
    "capabilities": {},
    "rootPath": "/home/bazil/Desktop/algo-ds/",
    "processId": 12345
  });
  client.sendMessage(message);
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late ClangLSPClient client;

  void startLanguageClient() {
    setState(() {
      client = ClangLSPClient(1, "Z-Code");
    });
  }

  void sendInitMessage() {
    var program = '''#include <iostream>

int main() {
    std::cout << "Hello World!";
    return 0;
}''';

    var message =
        new JsonRpcMessage(id: 2, method: "textDocument/didChange", params: {
      "uri": "file:///home/bazil/Desktop/algo-ds/stack.cpp",
      "languageId": 1,
      "version": 2,
      "text": program
    });

    client.sendMessage(message);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "SEARCH",
              style: TextStyle(color: fontClr1),
            ),
            CustomTextButton(
                text: "LSP",
                onTap: startLanguageClient,
                padding: EdgeInsets.all(0)),
            SpacerY(10),
            CustomTextButton(
                text: "LSP INIT",
                onTap: sendInitMessage,
                padding: EdgeInsets.all(0)),
            SpacerY(10),
            Text(
              "Work in Progress",
              style: TextStyle(color: fontClr1, fontSize: 12),
            )
          ],
        ));
  }
}
