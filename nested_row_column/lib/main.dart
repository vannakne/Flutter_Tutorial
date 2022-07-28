import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  double? fitScreen;

  @override
  Widget build(BuildContext context) {
    double fitScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  get _buildAppBar => AppBar(
        backgroundColor: Colors.yellow[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text("Movies"),
            Text("Tv Show"),
            Text("Latest"),
            Text("Favorite"),
          ],
        ),
      );

  get _buildBody => Container(
        // color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _colomnBox,
            _colomnBox,
            _colomnBox,
            _colomnBox,
          ],
        ),
      );

  get _colomnBox => Container(
        // margin: EdgeInsets.only(top: 25),
        color: Colors.blue,
        height: 150,
        width: fitScreen,
        child: Row(
          children: [movieList(), movieContent()],
        ),
      );

  movieList() {
    return Container(
      height: 120,
      width: 120,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.shopify.com/s/files/1/0747/3829/products/mL3081_1024x1024.jpg?v=1571445679"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  movieContent() {
    return Container(
      color: Colors.purple,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 25, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aladin",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Container(
            color: Colors.pink,
            width: 270,
            height: 80,
            margin: EdgeInsets.only(top: 5),
            child: const Text(
              "Aladdin is a 2019 American Aladdin is a 2019 American Aladdin is a 2019 American Aladdin is a 2019.",
              style: TextStyle(overflow: TextOverflow.visible, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
