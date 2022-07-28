import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,

      // bottomNavigationBar
      bottomNavigationBar: _buildBottomNaviationBar,

    );
  }

  // bottomNavigationBar (BottomAppBar & BottomNavigationBar)
  get _buildBottomNaviationBar{
    return BottomAppBar(
      
      // background color
      color: Colors.amberAccent.withOpacity(0.9),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        IconButton(
          icon:const Icon(Icons.home),
          onPressed: (){

          },
        ),
        IconButton(
          icon:const Icon(Icons.accessibility),
          onPressed: (){

          },
        ),
        IconButton(
          icon:const Icon(Icons.settings),
          onPressed: (){

          },
        ),
        IconButton(
          icon:const Icon(Icons.navigation),
          onPressed: (){

          },
        )
      ],),
    );
  }
}