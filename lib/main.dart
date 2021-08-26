import 'package:abc_flutter/welcomescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
           appBar: AppBar(
             backgroundColor: Color(0xe1ff8b31),
             title: Center(child: Text("ABC Game",style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 30
             ),)),
             elevation: 0.0,
           ),
         body:WelcomeScreen(),
       ),
    );
  }
}
