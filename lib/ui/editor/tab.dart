import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/files/files_bloc.dart';
import 'package:xdynamite/ui/widgets/custom_icon_button.dart';
import 'package:xdynamite/ui/widgets/spacer_x.dart';

class Tab extends StatelessWidget {
  String name;
  String path;
  Tab({Key? key, required this.name, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesBloc, FilesState>(
      builder: (ctx, state) {
        return GestureDetector(
          onTap: () {
            context
                .read<FilesBloc>()
                .add(SelectOpenedFile({"name": name, "path": path}));
          },
          child: Container(
            padding: EdgeInsets.all(5),
            color: (state.currentFile != null &&
                    state.currentFile!["name"] == name)
                ? lightColor1
                : lightColor3,
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 12),
                ),
                SpacerX(5),
                CustomIconButton(
                  icon: Icons.close,
                  bgColor: (state.currentFile != null &&
                          state.currentFile!["name"] == name)
                      ? lightColor1
                      : lightColor3,
                  hoverColor: (state.currentFile != null &&
                          state.currentFile!["name"] == name)
                      ? lightColor2
                      : lightColor4,
                  size: 15,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
