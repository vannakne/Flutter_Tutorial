import 'package:flutter/cupertino.dart';
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
        color: Colors.blue[100],
        alignment: Alignment.center,
        child: _button,
      ),
    );
  }

  get _button {
    return GestureDetector(
      onDoubleTap: () {
        print("Button double clicked");
      },
      child: ElevatedButton(
        autofocus: false,
        // clipBehavior: Clip.none,
        child:const Text("Button"),
        onPressed: (){

        },)
    );
  }
}
