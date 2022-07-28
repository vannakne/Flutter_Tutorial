import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottom,
    );
  }

  get _buildBottom => BottomAppBar(
    color: Colors.pink,
    
    child: Row(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        IconButton(onPressed: () => null, 
        icon:const Icon(Icons.home)),

        IconButton(onPressed: () => null, 
        icon:const Icon(Icons.place)),

        IconButton(onPressed: () => null, 
        icon:const Icon(Icons.navigation)),

        IconButton(onPressed: () => null, 
        icon:const Icon(Icons.play_circle)),

        IconButton(onPressed: () => null, 
        icon:const Icon(Icons.settings)),


      ],
    )
  );
}
