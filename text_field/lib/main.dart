import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody {
    return Container(
      alignment: Alignment.center,

      // padding the text field
      padding:const EdgeInsets.all(20),
      child: _buildTextField,
    );
  }

  get _buildTextField {
    return Container(
      padding:const EdgeInsets.only(left: 20, right: 20),
      
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      
      child:const TextField(

        keyboardType: TextInputType.visiblePassword,

        style: TextStyle(
          color: Colors.white, 
          fontSize: 20,
          ),

          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: Icon(Icons.mail, color: Colors.white,),
            border: InputBorder.none,
          ),
      ),
    );
  }
}
