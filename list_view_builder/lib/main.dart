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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int listL = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
      floatingActionButton: _buildFloatingButton,
    );
  }

  get _buildBody {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: ListView.builder(
        itemBuilder: (listViewContext, index) {
          return _buildSingleListView();
        },
        itemCount: listL,
      ),
    );
  }

  _buildSingleListView() {
    return Container(
      // height: 100,
      // color: Colors.pink,
      margin: EdgeInsets.all(1),
      padding: EdgeInsets.all(5),
      child: TextField(),
    );
  }

  get _buildFloatingButton {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                listL += 1;
                print(listL);
              });
            }),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (listL > 1) {
                  listL -= 1;
                  print(listL);
                }
              });
            })
      ],
    );
  }
}

class PropertyList {
  Color c;
  String title;
  String content;

  PropertyList(this.c, this.title, this.content);
}
