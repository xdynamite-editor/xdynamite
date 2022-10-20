import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart' hide ThemeData;
import 'package:google_fonts/google_fonts.dart';
import 'package:text_editor/app/constants/colors.dart';
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
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: Scaffold(
        backgroundColor: clr1,
        body: PrimaryLauout(),
      ),
    );
  }
}
