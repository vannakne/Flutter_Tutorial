
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: _buildOutlineButton,
      ),
    );
  }

  get _buildOutlineButton {
    return SizedBox(
      width: 300,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.pink,
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        child: const Text(
          "Register",
          style: TextStyle(fontSize: 24),
        ),
        onPressed: () {},
      ),
    );
  }
}
