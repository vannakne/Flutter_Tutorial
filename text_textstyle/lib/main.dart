import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(

        // text style
        child: Text(
          "សួស្តីឆ្នាំថ្មី",
          style: TextStyle(
            color: Colors.amber, 
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Khmer Bakor",
            ),

          ) 
      ,),
    );
  }
}