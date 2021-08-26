import 'package:abc_flutter/puzzle/src/flutter.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floodfill_image/floodfill_image.dart';
import 'dart:ui';
import 'package:abc_flutter/styleButton.dart';


class WriteLetter extends StatefulWidget {
  @override
  _WriteLetterState createState() => _WriteLetterState();
}

class _WriteLetterState extends State<WriteLetter> {

  int i = 1;
  int j =2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        actions: [Icon(Icons.navigate_next_outlined)],
        title: Center(
            child: Text(
          "Writing or Reading",
          style: TextStyle(fontWeight: FontWeight.w300),
        )),
        elevation: 0.0,
      ),
      body: Container(
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
            Container(

              height: MediaQuery.of(context).size.height/2,
              child:
                 Image.asset('assets/letter/$i.png'),
                             ),

            Container(
              child: StyleButton(
                width: 200.0,
                height: 70.0,
                text: "next",
                onPress: () {
                  AssetsAudioPlayer.newPlayer().open(Audio("assets/songs/1$j.mp3"));
                  setState(() {
                    if(i<27) {
                      i++;
                      j++;
                    }
                    else{
                      Navigator.pop(context);
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
