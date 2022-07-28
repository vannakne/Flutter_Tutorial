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
      backgroundColor: Colors.amber,
      // bottomNavigationBar
      bottomNavigationBar: _buildBottomNavigation,
    );
  }

  get _buildBottomNavigation {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.blueGrey,
      items:const [
  
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill), label: "Play",),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting",),

      ],
      
      );
  }
}
