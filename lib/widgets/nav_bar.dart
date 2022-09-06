import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.black,
      child: Column(
        children: [
          NavBarItem(icon: FluentIcons.file_system),
          NavBarItem(icon: FluentIcons.search),
          NavBarItem(icon: FluentIcons.git_graph),
          NavBarItem(icon: FluentIcons.bug),
          NavBarItem(icon: FluentIcons.app_icon_default_add)
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: material.Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Icon(
        icon,
        size: 25,
      ),
    );
  }
}
