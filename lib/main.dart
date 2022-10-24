import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart' as Material;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/bloc/action_bar_bloc.dart';
import 'package:xdynamite/domain/files/files_bloc.dart';
import 'package:xdynamite/domain/side_panel/side_panel_bloc.dart';
import 'package:xdynamite/ui/layouts/primary_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FilesBloc()),
        BlocProvider(create: (context) => SidePanelBloc()),
        BlocProvider(create: (context) => ActionBarBloc())
      ],
      child: Material.MaterialApp(
        title: 'Z-CODE',
        theme: Material.ThemeData(
          fontFamily: "Poppins",
          colorScheme: Material.ColorScheme.fromSwatch().copyWith(
            secondary: primaryAccentColor, // Your accent color
          ),
        ),
        home: const Material.Scaffold(
          body: PrimaryLauout(),
        ),
      ),
    );
  }
}
