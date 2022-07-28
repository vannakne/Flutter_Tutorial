import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

      // container 
      body: Container(

        alignment: Alignment.center,
        color: Colors.blue,
        margin:const EdgeInsets.only(top: 100, bottom: 50, left: 30, right: 30),

        // containter
        child: Container(
      
          width: 200,
          height: 200,

          // constraints:const BoxConstraints(maxHeight: 200, maxWidth: 200, minHeight: 200, minWidth: 200),

          
          // if use decoration color must define inside decoration not outside
          decoration:const BoxDecoration(
            color: Colors.amber,

            // shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70), 
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(70),
              topRight: Radius.circular(0)
              ),
            ),
      
          // color: Colors.amber,
          // color: Colors.amber.withOpacity(0.5),
          // // color: Color.fromARGB(a, r, g, b),
      
          // // Alignment (align the container child not container itself)
          // // alignment:const Alignment(0.0 , 0.0), // = center
          // // alignment:const Alignment(0.0, 1.0),  // = bottomCenter
          alignment: Alignment.center, // alignment is important, if not used container will just fit to the content of the child
      
      
          // // margin
          // // margin: const EdgeInsets.all(50),
          // margin: const EdgeInsets.symmetric(vertical: 300, horizontal: 50),
          // // margin: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
      
          // child
          child:const Text(
            "Hello Flutter", 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
          
          
          // child: const Icon(
          //   FontAwesomeIcons.apple,
          //   size: 100,
          // ),
          
          
          // // padding:const EdgeInsets.only(bottom: 17),
        
        
        ),
      ),
    );
  }
}
