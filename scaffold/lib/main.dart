import 'package:flutter/material.dart';

/*

===================
Scaffold Properties
===================
1. AppBar
2. Drawer
3. BottomAppBar
4. Body
5. FloatingActionButton
6. ButtomNavigationBar

*/

void main() {
  runApp(MyApp());
}

// Create Home

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// Scaffold
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text("AppBar!!"),
      ),

      // Body
      body: Container(
        alignment: Alignment.center,
        child: const Text("Body In Container"),
      ),

      // backgrounColor
      backgroundColor: Colors.amber,

      // drawer
      drawer: const Drawer(),

      // endDrawer
      endDrawer: const Drawer(),

      // floatingActionButton
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation),
        onPressed: () {
          print("Button Clicked");
        },
      ),


      // floatingActionButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    
    
    );
  }
}
