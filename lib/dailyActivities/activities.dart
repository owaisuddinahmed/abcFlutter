import 'package:abc_flutter/puzzle/src/flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class activities extends StatefulWidget {

  @override
  _activitiesState createState() => _activitiesState();
}

class _activitiesState extends State<activities> {
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
                                          Image.asset('assets/activities/bed.jpg',scale: 2,),
                                          Text('Fixing Bed',style: TextStyle(
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
                                    Image.asset('assets/activities/fixingBedGif.gif',scale: 2,),
                                    Text('Fixing Bed',style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white
                                    ),)
                                  ],
                                ),
                                onFlip: (){
                                  talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/fixingBed.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/fbed.mp3"));;
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
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/activities/brush.jpg',scale: 2,),
                                        Text('Brushing',style: TextStyle(
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
                                  Image.asset('assets/activities/brushGif.gif',scale: 2,),
                                  Text('Brushing',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/brushing.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/gifsound/bteet.mp3"));;
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
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/activities/bath.jpg',scale: 2,),
                                        Text('Taking Bath',style: TextStyle(
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
                                  Image.asset('assets/activities/bathGif.gif',scale: 2,),
                                  Text('Taking Bath',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/bath.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/bath.mp3"));;
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
                                        Image.asset('assets/activities/prayer.png',scale: 2,),
                                        Text('Prayer',style: TextStyle(
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
                                  Image.asset('assets/activities/prayerGif.gif',scale: 2,),
                                  Text('Prayer',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/prayer.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/opray.mp3"));;
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
                                    padding: const EdgeInsets.all(14.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/activities/breakfast.jpg',scale: 2,),
                                        Text('Breakfast',style: TextStyle(
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
                                  Image.asset('assets/activities/breakfastGif.gif',scale: 2,),
                                  Text('Eating Breakfast',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/breakfast.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/breakfast.mp3"));;
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
                                    padding: const EdgeInsets.all(14.0),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/activities/school.jpg',scale: 2,),
                                        Text('Going to school',style: TextStyle(
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
                                  Image.asset('assets/activities/schoolGif.gif',scale: 5,),
                                  Text('Going to school',style: TextStyle(
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
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/activities/play.jpg',scale: 2,),
                                        Text('Playing',style: TextStyle(
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
                                  Image.asset('assets/activities/playGif.gif',scale: 2,),
                                  Text('Playing',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/palying.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/palying.mp3"));;
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
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset('assets/activities/reading.jpg',scale: 2,),
                                        Text('Reading',style: TextStyle(
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
                                  Image.asset('assets/activities/readingGif.gif',scale: 2),
                                  Text('Reading Books',style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                              onFlip: (){
                                talha?AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/re.mp3")):AssetsAudioPlayer.newPlayer().open(Audio("assets/menusound/re.mp3"));;
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