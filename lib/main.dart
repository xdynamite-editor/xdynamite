import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart' as Material;
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
    if (Platform.isWindows) {
      return FluentApp(
          title: 'Z-CODE',
          theme: ThemeData(fontFamily: "Poppins"),
          home: PrimaryLauout());
    } else if (Platform.isLinux) {
      return Material.MaterialApp(
        title: 'Z-CODE',
        theme: Material.ThemeData(
          fontFamily: "Poppins",
        ),
        home: Material.Scaffold(
          backgroundColor: clr1,
          body: PrimaryLauout(),
        ),
      );
    } else {
      return Material.MaterialApp(
        title: 'Z-CODE',
        theme: Material.ThemeData(
          fontFamily: "Poppins",
        ),
        home: Material.Scaffold(
          backgroundColor: clr1,
          body: PrimaryLauout(),
        ),
      );
    }
  }
}
