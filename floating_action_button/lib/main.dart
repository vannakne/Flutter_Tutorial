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
      // floatingActionButton
      floatingActionButton: _buildFloatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  get _buildFloatingActionButton {
    return FloatingActionButton(

        // elevation: 20.5,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.yellow,
        splashColor: Colors.amber,
        child: const Icon(Icons.home),
        
        onPressed: () {
          print("Button clicked");
        });
  }
}
