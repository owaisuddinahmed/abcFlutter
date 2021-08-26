import 'package:abc_flutter/styleButton.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:floodfill_image/floodfill_image.dart';
import 'dart:ui';

class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  int i=0;
  bool talha=false;
  int j=0;
  int k=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(child: Text("Writing or Reading",style: TextStyle(
            fontWeight: FontWeight.w300
        ),)),
        elevation: 0.0,
      ),
      body:Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/11.jpg",
                ))),
        child: Column(

          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Row(

              children: [
                Container(
                  height:talha? MediaQuery.of(context).size.height/2:MediaQuery.of(context).size.height/3,
                  width:talha? MediaQuery.of(context).size.width/2:MediaQuery.of(context).size.width/3,
                  child:talha? FloodFillImage(
                    imageProvider: AssetImage('assets/number/$j.png'),
                    fillColor: Colors.yellow,
                    avoidColor: [Colors.transparent, Colors.black],
                  ):null,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: FloodFillImage(
                    imageProvider: AssetImage('assets/number/$i.png'),
                    fillColor: Colors.yellow,
                    avoidColor: [Colors.transparent, Colors.black],
                  ),
                ),
              ],
            ),
            Container(
              child: StyleButton(
                width: 200.0,
                height: 70.0,
                text: "next",
                onPress: () {
                  AssetsAudioPlayer.newPlayer().open(Audio("assets/counting/$k.wav"));
                  setState(() {
                    if(j==10&&i==0){
                      Navigator.pop(context);
                    }
                    if(i<10) {
                      i++;
                      k++;
                    }

                    if(i>9){
                   setState(() {
                     i=0;
                     if (j<10){
                       j++;
                     }
                     talha=true;
                   });
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
      );
  }
}
