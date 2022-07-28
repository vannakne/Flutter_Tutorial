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
      body: Container(
        alignment: Alignment.center,
        child: _buildMaterialButton,
      ),
    );
  }

  get _buildMaterialButton {
    return SizedBox(

      child: MaterialButton(
        child:const Text(
          "Register",
          style: TextStyle(
            decoration: TextDecoration.underline, 
            fontSize: 25, 
            color: Colors.blue, 
            fontStyle: FontStyle.italic),
          ),
        onPressed: (){

        },),
    );
  }
}
