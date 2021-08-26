import 'package:abc_flutter/styleButton.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Week extends StatefulWidget {
  @override
  _WeekState createState() => _WeekState();
}

class _WeekState extends State<Week> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(
            child: Text(
          "ABC Game",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
        )),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
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
        child: Container(
            color: Color(0xffff8b31),
            child: SizedBox(
                width: 100,
                height: 150,
                child: FlipCard(
                    flipOnTouch: true,
                    front: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                          StyleButton(text: "7 days=1 week",onPress: (){},width: 300.0,height: 80.0,),
                                StyleButton(text:'Tap on card!!',onPress: (){},width: 200.0,height: 70.0,),
                              ],
                            ),
                          )),
                    ),

                    back: Container(
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                StyleButton(text:'Monday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/2.mp3"));},width: 200.0,height: 60.0,),
                                StyleButton(text:'Tuesday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/3.mp3"));},width: 200.0,height: 60.0,),
                                StyleButton(text:'wednesday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/4.mp3"));},width: 200.0,height: 60.0,),
                                StyleButton(text:'thursday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/5.mp3"));},width: 200.0,height: 60.0,),
                                StyleButton(text:'Friday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/6.mp3"));},width: 200.0,height: 60.0,),
                                StyleButton(text:'Saturday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/7.mp3"));},width: 200.0,height: 60.0,),
                                StyleButton(text:'sunday',onPress: (){AssetsAudioPlayer.newPlayer().open(Audio("assets/day/1.mp3"));},width: 200.0,height: 60.0,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )))),
      ),
    );
  }
}
