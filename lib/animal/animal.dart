import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Animal extends StatefulWidget {
  @override
  _AnimalState createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  bool talha=true;
  bool talha1=true;
  bool talha2=true;
  bool talha3=true;
  bool talha4=true;
  bool talha5=true;

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 100,
                            height: 150,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                   Image.asset('assets/animal/1.png',scale: 8,),
                                    Text('Lion',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                    ),)
                                  ],
                                ),
                              )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/animal/2.png',scale: 8,),
                                  Text('Cub',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/lion.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/cub.mp3"));;
                              setState(() {
                                talha=talha?false:true;
                              });
                                },

                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 100,
                            height: 150,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/animal/3.png',scale: 8,),
                                        Text('Donkey',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/animal/4.png',scale: 8,),
                                  Text('Foal',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha1?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/donkey.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/foal.mp3"));;
                                setState(() {
                                  talha1=talha1?false:true;
                                });
                              },
                            ),
                          )),
                    ),
                    Container(
                        color: Color(0xffff8b31),
                        child: SizedBox(
                          width: 100,
                          height: 150,
                          child: FlipCard(
                            flipOnTouch: true,
                            front: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/animal/5.png',scale: 8,),
                                      Text('Monkey',style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),)
                                    ],
                                  ),
                                )),
                            back: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/animal/6.png',scale: 8,),
                                Text('infant',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                ),)
                              ],
                            ),
                            onFlip: (){
                              talha2?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/monkey.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/infant.mp3"));;
                              setState(() {
                                talha2=talha2?false:true;
                              });
                            },
                          ),
                        )),
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
                            width: 100,
                            height: 150,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/animal/7.png',scale: 8,),
                                        Text('Cow',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/animal/8.png',scale: 8,),
                                  Text('Calf',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha3?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/cow.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/calf.mp3"));;
                                setState(() {
                                  talha3=talha3?false:true;
                                });
                              },
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Color(0xffff8b31),
                          child: SizedBox(
                            width: 100,
                            height: 150,
                            child: FlipCard(
                              flipOnTouch: true,
                              front: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/animal/9.png',scale: 8,),
                                        Text('Mouse',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  )),
                              back: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/animal/10.png',scale: 8,),
                                  Text('pup',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha4?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/mouse.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/pup.mp3"));;
                                setState(() {
                                  talha4=talha4?false:true;
                                });
                              },
                            ),
                          )),
                    ),
                    Container(
                        color: Color(0xffff8b31),
                        child: SizedBox(
                          width: 100,
                          height: 150,
                          child: FlipCard(
                            flipOnTouch: true,
                            front: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/animal/11.png',scale: 8,),
                                      Text('Cat',style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),)
                                    ],
                                  ),
                                )),
                            back: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/animal/12.png',scale: 8,),
                                Text('kitten',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                ),)
                              ],
                            ),
                            onFlip: (){
                              talha5?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/cat.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/kitten.mp3"));;
                              setState(() {
                                talha5=talha5?false:true;
                              });
                            },
                          ),
                        )),
                  ],
                )
              ],
            )));
  }
}
