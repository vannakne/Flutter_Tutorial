import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            _box(Colors.pink),
            _box(Colors.yellow),
            _box(Colors.purple),
            _box(Colors.green),
            _box(Colors.white),
            _box(Colors.brown),
          ],
        ),
      ),
    );
  }

  _box(Color color) {
    return Container(
      margin: EdgeInsets.all(10),
      color: color,
      alignment: Alignment.center,
      width: 300,
      height: 300,
    );
  }
}
