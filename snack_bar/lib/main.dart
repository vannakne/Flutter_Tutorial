import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildButton(context),
    );
  }

  _buildButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(mySnackBar());
    });
  }

  // snackBar
  SnackBar mySnackBar() {
    return SnackBar(
      content: const Text("my message"),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            print("Undo clicked");
          }),
    );
  }
}
