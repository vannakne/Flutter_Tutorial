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

  double hi = 150;

  @override
  Widget build(BuildContext context) {
    double fitScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody {
    return Container(
      child: ListView(
        children: [
          _outSizeBox(Axis.vertical, h: hi*5),
        ],
      ),
    );
  }

  _outSizeBox(Axis direction, {double h = 150}) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      color: Colors.purple,
      child: SizedBox(
        height: h,
        width: double.infinity,
        // width: double.infinity,
        child: ListView(
          scrollDirection: direction,
          children: [
            item(Colors.black),
            item(Colors.pink),
            item(Colors.blue),
            item(Colors.black),
            item(Colors.pink),
            item(Colors.blue),
            item(Colors.black),
            item(Colors.pink),
            item(Colors.blue),
          ],
        ),
      ),
    );
  }

  item(Color c) {
    return Container(
      height: hi,
      color: c,
    );
  }
}
