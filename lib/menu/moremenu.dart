import 'package:abc_flutter/animal/animal.dart';
import 'package:abc_flutter/colors/colors.dart';
import 'package:abc_flutter/math/math.dart';
import 'package:abc_flutter/monthofyear/mounthofyear.dart';
import 'package:abc_flutter/Spelling/spelling.dart';
import 'package:abc_flutter/shap/shape.dart';
import 'package:abc_flutter/week/dayofweek.dart';
import 'package:abc_flutter/flashcard/flashCard.dart';
import 'package:abc_flutter/maze/mazegame.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:abc_flutter/styleButton.dart';
import 'package:abc_flutter/dailyActivities/activities.dart';
import 'package:abc_flutter/places/place.dart';

import '../drawing.dart';
import '../family/family_member.dart';
import '../puzzle/puzzle.dart';
import 'package:abc_flutter/blanks/blanks.dart';

class MoreMenu extends StatelessWidget {
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
                StyleButton(text: 'Maze Game',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MazeGame())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/maze.mp3"));},),
                StyleButton(text: 'Flash Card',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FlashCard())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/flash.mp3"));},),
                StyleButton(text: 'Days of Week',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Week())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/week.mp3"));},),
                StyleButton(text: 'Month Of Year',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MounthOfYear())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/mounth.mp3"));},),
                StyleButton(text: 'Animal And kids name',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Animal())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/animal.mp3"));},),
                StyleButton(text: 'Spelling',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Spelling())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/spell.mp3"));},),
                StyleButton(text: 'Family Member',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Member())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/family.mp3"));},),
                StyleButton(text: 'Puzzle',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> PuzzleApp())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/puzzle.mp3"));},),
                StyleButton(text: 'Colors',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Colorss())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/color.mp3"));},),
                StyleButton(text: 'Shape',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Shape())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/shap.mp3"));},),
                StyleButton(text: 'Drawing',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/drawing.mp3"));},),
                StyleButton(text: 'Daily Activites',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> activities())); AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/dailyActivities.mp3"));},),
                StyleButton(text: 'Math',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Math())); AssetsAudioPlayer.newPlayer().open(Audio("assets/math/mathe.mp3"));},),
                StyleButton(text: 'Places we go to',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> place())); AssetsAudioPlayer.newPlayer().open(Audio("assets/places/placesWeGo.mp3"));},),
                StyleButton(text: 'Sentences',width:200.0,height: 70.0,onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Eng())); AssetsAudioPlayer.newPlayer().open(Audio("assets/places/sentences.mp3"));},),





              ],
            ),
          ),
        ),
      );
  }
}
