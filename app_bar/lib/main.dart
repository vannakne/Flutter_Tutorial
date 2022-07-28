import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

/*


=================
appBar Properties
=================
. leading
. title
. actions
. buttoms


*/

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
    );
  }

  get _buildAppbar {
    String logo =
        "https://logos-world.net/wp-content/uploads/2020/08/Google-Chrome-Logo.png";

    return AppBar(
      backgroundColor: Colors.brown,
      // titile
      // title: const Text("App Bar"),

      // make menu title
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          InkWell(
            child:const Text("Movies"),
            onTap: () => print("Movies clicked"),
          ),

          InkWell(child:const Text("TV Show"),
          onTap: () => print("Tv Show clicked"),),

          InkWell(child:const Text("Latest"),
          onTap: () => print("latest clicked"),)
        ],
      ),

      // leading (can be and icon or logo)
      // leading: Icon(Icons.home), Icon
      leading: Container(
          child: InkWell(
        // Inwell to make leading click able
        child: Image.network(logo),
        onTap: () {
          print("Logo clicked");
        },
      )), // logo image

      actions: [
        IconButton(icon:const Icon(Icons.settings),
        onPressed: (){

        },)
      ],

    );
  }
}
