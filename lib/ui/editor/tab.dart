import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/domain/files/files_bloc.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';
import 'package:text_editor/ui/widgets/spacer_x.dart';

class Tab extends StatelessWidget {
  String filename;
  Tab({Key? key, required this.filename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesBloc, FilesState>(
      builder: (ctx, state) {
        return Container(
          padding: EdgeInsets.all(5),
          color: (state.currentFile != null &&
                  state.currentFile!["name"] == filename)
              ? lightColor1
              : lightColor3,
          child: Row(
            children: [
              Text(
                filename,
                style: TextStyle(fontSize: 12),
              ),
              SpacerX(5),
              CustomIconButton(
                icon: Icons.close,
                bgColor: (state.currentFile != null &&
                        state.currentFile!["name"] == filename)
                    ? lightColor1
                    : lightColor3,
                hoverColor: (state.currentFile != null &&
                        state.currentFile!["name"] == filename)
                    ? lightColor2
                    : lightColor4,
                size: 15,
              )
            ],
          ),
        );
      },
    );
  }
}
