import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide ThemeData;
import 'package:text_editor/ui/layouts/primary_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Z-CODE',
      theme: ThemeData(),
      home: Scaffold(
        body: PrimaryLauout(),
      ),
    );
  }
}
