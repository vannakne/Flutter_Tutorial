import 'package:flutter/cupertino.dart';
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              banner(
                  'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F619445582af2001a65b17a66%2F0x0.jpg'),
              _colomnBox,
              _colomnBox,
              _colomnBox,
              _colomnBox,
              _colomnBox,
            ],
          ),
        ),
      );

  get _colomnBox => Container(
        // margin: EdgeInsets.only(top: 25),
        color: Colors.black,
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
      // color: Colors.purple,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 25, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aladin",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
          ),
          Container(
            // color: Colors.pink,
            width: 270,
            height: 80,
            margin: EdgeInsets.only(top: 5),
            child: const Text(
              "Aladdin is a 2019 American Aladdin is a 2019 American Aladdin is a 2019 American Aladdin is a 2019.",
              style: TextStyle(
                  overflow: TextOverflow.visible,
                  fontSize: 15,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  banner(String img) {
    double h = 550;
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      height: h,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          width: fitScreen,
          height: h,
          child: Image.network(
            img,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.01, 0.3],
            colors: [Colors.black, Colors.black.withOpacity(0.1)],
          )),
        ),
        Container(
          alignment: Alignment.center,
          height: 200,
          // color: Colors.pink,

          child: Column(
            children: [
              const Text(
                "N E T F L I X",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              const Text(
                "Romantic . Sci-fi . Horor . Action . Series",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      Text(
                        "MyList",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      print("Playing");
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow_sharp,
                          color: Colors.black,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
