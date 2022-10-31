import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdynamite/domain/action_bar/action_bar_bloc.dart';
import 'package:xdynamite/ui/widgets/app_menu.dart';
import 'package:xdynamite/ui/editor/editor.dart';
import 'package:xdynamite/ui/status_bar/status_bar.dart';
import 'package:xdynamite/ui/action_bar/action_bar.dart';
import 'package:xdynamite/ui/side_panel/side_panel.dart';

class PrimaryLauout extends StatelessWidget {
  const PrimaryLauout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            ActionBar(),
            Expanded(
                child: Row(
              children: [SidePanel(), MainUI()],
            )),
            StatusBar()
          ],
        ),
        BlocBuilder<ActionBarBloc, ActionBarState>(builder: (ctx, state) {
          return Container(
              child: state.isAppMenuOpen
                  ? Positioned(top: 40, left: 12, child: AppMenu())
                  : null);
        })
      ],
    );
  }
}

class MainUI extends StatelessWidget {
  const MainUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Expanded(
            child: Editor(),
          ),
          // BottomPanel()
        ],
      ),
    );
  }
}
