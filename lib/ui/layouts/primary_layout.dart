import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resizable_widget/resizable_widget.dart';
import 'package:xdynamite/domain/action_bar/action_bar_bloc.dart';
import 'package:xdynamite/domain/side_panel/side_panel_bloc.dart';
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
                child: ResizableWidget(
              isHorizontalSeparator: false,
              percentages: const [0.25, 0.75],
              onResized: (info) {
                context
                    .read<SidePanelBloc>()
                    .add(SetSidePanelWidth(info.first.size));
              },
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
