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

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String? message = "Good Morning";
  bool message = false;
  bool backGcolor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  get _buildAppBar {
    return AppBar(
      title: message ? Text("Good Morning") : Text("Good Afternoon"),
      actions: [
        InkWell(
          child: Icon(Icons.home),
          onTap: () {
            setState(() {
              message = !message;
              backGcolor = !backGcolor;
            });
          },
        )
      ],
    );
  }

  get _buildBody {
    return Container(
      color: backGcolor ? Colors.pink : Colors.yellow,
    );
  }
}
