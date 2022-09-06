import 'package:fluent_ui/fluent_ui.dart';
import 'package:text_editor/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Z-CODE',
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
