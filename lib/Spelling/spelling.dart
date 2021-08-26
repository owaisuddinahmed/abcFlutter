import 'package:abc_flutter/Cardee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


class Spelling extends StatefulWidget {
  @override
  _SpellingState createState() => _SpellingState();
}

class _SpellingState extends State<Spelling> {
  final assetsAudioPlayer =AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(
            child: Text(
              "A  for Apple",
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
                  Cardee(j: 1,text2: 'Apple',i: 1,k: 1,),
                  Cardee(j: 2,text2: 'Ball',i: 2,k: 2,),
                  Cardee(j:3,text2: 'Cat',i: 3,k: 3,),
                ],
              ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Cardee(j:4,text2: 'Dog',i: 4,k: 4,),
                Cardee(j: 5,text2: 'Egg',i: 5,k: 5,),
                Cardee(j: 6,text2: 'Fish',i: 6,k: 6,),
              ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Cardee(j: 7,text2: 'Guitar',i: 7,k: 7,),
                Cardee(j: 8,text2: 'Hammer',i: 8,k: 8),
                Cardee(j: 9,text2: 'Ice',i: 9,k: 9),
              ],
          ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Cardee(j: 10,text2: 'Jam',i: 10,k: 10,),
                Cardee(j: 11,text2: 'Key',i: 11,k: 11,),
                Cardee(j: 12,text2: 'Leave',i: 12,k: 12),
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cardee(j: 13,text2: 'Monkey',i: 13,k: 13,),
              Cardee(j: 14,text2: 'Nail',i: 14,k: 14,),
              Cardee(j:15,text2: 'Orange',i: 15,k: 15,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cardee(j: 16,text2: 'Pop-Corn',i: 16,k: 16,),
              Cardee(j:17,text2: 'Queen',i: 17,k: 17,),
              Cardee(j: 18,text2: 'Radio',i: 18,k: 18,),
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cardee(j: 19,text2: 'Snake',i: 19,k: 19,),
              Cardee(j: 20,text2: 'Tree',i: 20,k: 20,),
              Cardee(j: 21,text2: 'Unicorn',i: 21,k: 21,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cardee(j: 22,text2: 'Vacuum',i: 22,k: 22,),
              Cardee(j: 23,text2: 'Wheel',i: 23,k: 23,),
              Cardee(j: 24,text2: 'Box',i: 24,k: 24,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cardee(j: 25,text2: 'Yo-yo',k: 25,),
              Cardee(j: 26,text2: 'Zebra',k: 26,),
            ],
          ),

        ],
      ),
           ),
         ),
    );
  }
}
