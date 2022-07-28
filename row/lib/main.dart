import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody {
    return Container(
      color: Colors.yellow[200],
      alignment: Alignment.center,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _box(Colors.blue),
            _box(Colors.red),
            _box(Colors.purple),
          ],
        ),
      ),
    );
  }

  _box(Color color, {double h = 100, double w = 100}) {
    return Container(
      height: h,
      width: w,
      color: color,
    );
  }
}
