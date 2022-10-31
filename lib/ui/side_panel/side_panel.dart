import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/side_panel/side_panel_bloc.dart';
import 'package:xdynamite/ui/side_panel/widgets/active_panel.dart';
import 'package:xdynamite/ui/side_panel/widgets/side_panel_menu.dart';

class SidePanel extends StatefulWidget {
  SidePanel({Key? key}) : super(key: key);
  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  bool shrunken = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SidePanelBloc, SidePanelState>(builder: (ctx, state) {
      return Container(
        width: state.sidePanelWidth,
        color: lightColor3,
        child: Row(
          children: [const SidePanelMenu(), Expanded(child: ActivePanel())],
        ),
      );
    });
  }
}
