import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abc_flutter/shap/shape_card.dart';

class Shape extends StatefulWidget {
  @override
  _ShapeState createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xe1ff8b31),
          title: Center(
              child: Text(
                "Shapes Name",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
              )),
          elevation: 0.0,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/11.jpg",
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cardeeeee(j: 1,text2: 'Square',k: 1,),
                    Cardeeeee(j: 2,text2: 'Circle',k: 2,),
                    Cardeeeee(j: 3,text2: 'Oval',k: 3,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cardeeeee(j: 4,text2: 'Triangle',k: 4,),
                    Cardeeeee(j: 5,text2: 'Pentagon',k: 5,),
                    Cardeeeee(j: 6,text2: 'Rectangle',k: 6,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cardeeeee(j: 7,text2: 'Cube',k: 7,),
                    Cardeeeee(j: 8,text2: 'Sphere',k: 8,),
                    Cardeeeee(j: 9,text2: 'Cone',k: 9,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
