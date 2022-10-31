import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/side_panel/side_panel_bloc.dart';
import 'package:xdynamite/ui/side_panel/widgets/file_browser.dart';
import 'package:xdynamite/ui/side_panel/widgets/search.dart';
import 'package:xdynamite/ui/side_panel/widgets/settings.dart';

class ActivePanel extends StatelessWidget {
  const ActivePanel({Key? key}) : super(key: key);

  final _panelList = const [FileBrowser(), Search(), Settings()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SidePanelBloc, SidePanelState>(builder: (ctx, state) {
      return Container(
        color: lightColor3,
        child: Column(
          children: [const TopBar(), _panelList[state.position]],
        ),
      );
    });
  }
}
//

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  final _panelTitles = const ["FILE BROWSER", "SEARCH", "SETTINGS"];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SidePanelBloc, SidePanelState>(builder: (ctx, state) {
      return Container(
          width: 250,
          color: lightColor6,
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Text(
            _panelTitles[state.position],
            style: const TextStyle(
                fontWeight: FontWeight.w900, color: fontClr1, fontSize: 12),
          ));
    });
  }
}
