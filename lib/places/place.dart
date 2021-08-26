import 'package:abc_flutter/puzzle/src/flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
class place extends StatefulWidget {
  @override
  _placeState createState() => _placeState();
}

class _placeState extends State<place> {
  bool talha=true;

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
            padding: EdgeInsets.all(13),
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


                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 150,
                            height: 170,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/places/museum.png',scale: 10,),
                                        Text('museum',style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/places/museum1.png',scale: 10,),
                                  Text('museum',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/places/museumAudio.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/places/museumAudio.mp3"));;
                                setState(() {
                                  talha=talha?false:true;
                                });
                              },

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 150,
                            height: 170,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/places/park1.png',scale: 10,),
                                        Text('park',style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/places/park.png',scale: 10,),
                                  Text('park',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/places/parkAudio.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/places/parkAudio.mp3"));;
                                setState(() {
                                  talha=talha?false:true;
                                });
                              },

                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 150,
                            height: 170,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/places/zoo.png',scale: 10,),
                                        Text('Zoo',style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/places/zoo1.png',scale: 10,),
                                  Text('zoo',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/places/zooAudio.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/places/zooAudio.mp3"));;
                                setState(() {
                                  talha=talha?false:true;
                                });
                              },

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 150,
                            height: 170,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/places/market.png',scale: 10,),
                                        Text('Market',style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/places/market1.png',scale: 10,),
                                  Text('Market',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/places/marketAudio.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/places/marketAudio.mp3"));;
                                setState(() {
                                  talha=talha?false:true;
                                });
                              },

                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 150,
                            height: 170,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/places/school.png',scale: 10,),
                                        Text('School',style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/places/school1.png',scale: 10,),
                                  Text('School',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/school.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/school.mp3"));;
                                setState(() {
                                  talha=talha?false:true;
                                });
                              },

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 150,
                            height: 170,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/places/mosque.png',scale: 10,),
                                        Text('Mosque',style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/places/mosque.png',scale: 10,),
                                  Text('Mosque',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/places/mosAudio.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/places/mosAudio.mp3"));;
                                setState(() {
                                  talha=talha?false:true;
                                });
                              },

                            ),
                          ),
                        ),
                      ),

                    ],
                  ),


                ],
              ),
            )));
  }
}