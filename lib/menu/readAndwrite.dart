
import 'package:abc_flutter/findalphabet/find_alphbet.dart';
import 'package:abc_flutter/styleButton.dart';
import 'package:abc_flutter/write/tracing.dart';
import 'package:abc_flutter/write/tracingNumber.dart';
import 'package:abc_flutter/writing/letter.dart';
import 'package:abc_flutter/writing/number.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class readAndWrite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xe1ff8b31),
          title: Center(child: Text("ABC Game",style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30
          ),)),
          elevation: 0.0,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/11.jpg",
                )),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StyleButton(text: 'reading Alphabet',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> WriteLetter()));AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/kid-a.mp3"),);},),
                StyleButton(text: 'Tracing Alphabet',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TracingAlphabet())); AssetsAudioPlayer.newPlayer().open(Audio("assets/audio/kid-a.mp3"));},),
                StyleButton(text: 'reading number',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Number())); AssetsAudioPlayer.newPlayer().open(Audio("assets/counting/0.wav"));},),
                StyleButton(text: 'Tracing number',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TracingNumber())); AssetsAudioPlayer.newPlayer().open(Audio("assets/counting/0.wav"));},),

                StyleButton(text: 'Find Alphabet ',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Find())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/alphabet.mp3"));},),

                              ],
            ),
          ),
        ),
      );
  }
}
