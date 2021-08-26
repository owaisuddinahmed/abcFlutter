import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Cardee extends StatelessWidget {
  Cardee({this.j,this.text2,this.i,this.k});
final text2;
final i;
final j;
final k;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Color(0xffff8b31),
          child: SizedBox(
            width: 100,
            height: 100,
            child: FlipCard(
              flipOnTouch: true,
              front: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/letter/$j.png',scale: 8,),
                      ],
                    ),
                  )),
              back: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/spelling/$i.png',scale: 8,),
                  Text(text2,style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),)
                ],
              ),
              onFlip: (){
                AssetsAudioPlayer.newPlayer().open(Audio("assets/apple/$k.mp3"));

              },
            ),
          )),
    );
  }
}

