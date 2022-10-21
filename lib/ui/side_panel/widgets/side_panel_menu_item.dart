import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/domain/side_panel/side_panel_bloc.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';

class SidePanelMenuItem extends StatelessWidget {
  int id;
  IconData icon;
  SidePanelMenuItem({Key? key, required this.icon, required this.id})
      : super(key: key);

  void Function() _onTap(BuildContext ctx) {
    return () {
      ctx.read<SidePanelBloc>().add(Select(id));
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SidePanelBloc, SidePanelState>(
        builder: (context, state) {
      return CustomIconButton(
        icon: icon,
        onTap: _onTap(context),
        isActive: state.position == id,
        iconColor: primaryAccentColor,
        bgColor: lightColor6,
        hoverColor: lightColor1,
        size: 30,
        padding: 5,
        borderRadius: 5,
      );
    });
  }
}
