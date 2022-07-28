import 'package:flutter/material.dart';
import 'myapp_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = MyCustomTheme.dark();
    return MaterialApp(
        theme: theme,
        home: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Text(
              "Theme Setting",
              style: theme.textTheme.headline1,
            ),
          ),
        ));
  }
}


