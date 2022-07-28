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
      color: Colors.pink,
      child: _buildLoginButton,
    );
  }

  get _buildLoginButton {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.yellow[800],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          print("Login clicked");
        },
        onLongPress: () {
          print("Long Pressed");
        },
      ),
    );
  }
}
