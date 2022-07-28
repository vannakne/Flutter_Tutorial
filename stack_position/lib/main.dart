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
      alignment: Alignment.center,
      color: Colors.yellow[50],
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          box(300, 300, Colors.green),
          box(200, 200, Colors.blue),
          box(100, 100, Colors.purple),
          Positioned(
            child: box(50, 50, Colors.black),
            bottom: 0,
            right: 0,
            )
        ],
      ),
    );
  }

  box(double w, double h, Color color) => Container(
        width: w,
        height: h,
        color: color,
        alignment: Alignment.center,
      );
}
