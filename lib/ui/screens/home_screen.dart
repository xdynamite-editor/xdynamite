import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:text_editor/ui/widgets/bottom_bar.dart';
import 'package:text_editor/ui/editor/editor.dart';
import 'package:text_editor/ui/widgets/menu_bar.dart';
import 'package:text_editor/ui/widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MenuBar(),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [SideBar(), Expanded(child: Editor())],
            )),
            BottomBar()
          ],
        ),
      ),
    );
  }
}
