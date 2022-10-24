import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        child: _panelList[state.position],
      );
    });
  }
}
