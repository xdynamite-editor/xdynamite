import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/domain/files/files_bloc.dart';
import 'package:text_editor/ui/editor/tab.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: lightColor3,
        child: BlocBuilder<FilesBloc, FilesState>(
          builder: (ctx, state) {
            return Row(
                children: state.openedFiles
                    .map(
                      (e) => Tab(
                        name: e["name"] as String,
                        path: e["path"] as String,
                      ),
                    )
                    .toList());
          },
        ));
  }
}
