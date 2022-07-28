import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _mykey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _mykey,
      appBar: _buildAppBar,
      drawer: _buildDrawer,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () {
          _mykey.currentState?.openDrawer();
        },
      ),
    );
  }

  get _buildAppBar {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          appBarTitle('Movie'),
          appBarTitle('TV Show'),
          appBarTitle('Categories'),
        ],
      ),
    );
  }

  get _buildDrawer {
    return Drawer(
      child: ListView(
        children: [
          drawerList(Icons.home, 'Home', 'Go to HomePage?'),
          drawerList(Icons.settings, 'Setting', 'Setting something up?'),
          drawerList(FontAwesomeIcons.solidMehRollingEyes, 'More',
              'Looking for something else?'),
        ],
      ),
    );
  }

  appBarTitle(String title) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  drawerList(IconData leading, String title, String subtitle) {
    return ListTile(
      leading: Icon(leading),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
