import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavBarItem(icon: Icons.file_copy_outlined),
        NavBarItem(icon: Icons.search_rounded),
        NavBarItem(icon: Icons.share),
        NavBarItem(icon: Icons.bug_report),
        NavBarItem(icon: Icons.apps)
      ],
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
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
