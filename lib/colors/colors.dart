import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abc_flutter/colors/color_dart.dart';

class Colorss extends StatefulWidget {
  @override
  _ColorssState createState() => _ColorssState();
}

class _ColorssState extends State<Colorss> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xe1ff8b31),
          title: Center(
              child: Text(
                "Colors Name",
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
                    Cardeeee(j: 1,text2: 'Red',k: 'red',),
                    Cardeeee(j: 2,text2: 'Blue',k: 'blue',),
                    Cardeeee(j: 3,text2: 'Green',k: 'green',),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cardeeee(j: 4,text2: 'Yellow',k: 'yellow',),
                    Cardeeee(j: 'purple',text2: 'purple',k: 'purple',),
                    Cardeeee(j: 6,text2: 'White',k: 'white',),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cardeeee(j: 7,text2: 'Black',k: 'black',),
                    Cardeeee(j: 8,text2: 'Pink',k: 'pink',),
                    Cardeeee(j: 9,text2: 'Brown',k: 'brown',),
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
