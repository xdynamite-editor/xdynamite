import 'package:fluent_ui/fluent_ui.dart';
import 'package:text_editor/app/constants/colors.dart';

class FileBrowser extends StatefulWidget {
  const FileBrowser({Key? key}) : super(key: key);

  @override
  State<FileBrowser> createState() => _FileBrowserState();
}

class _FileBrowserState extends State<FileBrowser> {
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    if (!opened) {
      return Container(
          width: 200,
          color: clr2,
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Button(
              child: Text("Open folder"),
              onPressed: () {},
            )
          ]));
    }
    return Column(
      children: [],
    );
  }
}
