import 'package:abc_flutter/styleButton.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  int i=0;
  int j=0;
  int k=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AssetsAudioPlayer.newPlayer().open(Audio('assets/alphabet.mp3'));
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(child: Text('find alphabet',style: TextStyle(
            fontWeight: FontWeight.w300
        ),)),
        elevation: 0.0,
      ),
      body:  Container(
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
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StyleButton(text: '$j: true',onPress: (){},width: 120.0,height: 70.0,),
          StyleButton(text: '$k: false',onPress: (){},width: 120.0,height: 70.0,),
        ],
      ),
          StyleButton(text: word[i],onPress: (){},width: 150.0,height: 70.0,),
          Row(
            children: [
              StyleButton(text: correct[i],onPress: (){
                AssetsAudioPlayer.newPlayer().open(Audio(song[i]));
                if(i<2){
                  setState(() {
                    i++;
                    j++;
                  });
                }
                else {
                  Navigator.pop(context);
                }
              },width: 120.0,height: 70.0,),
              StyleButton(text: uncorrect[i],onPress: (){
                AssetsAudioPlayer.newPlayer().open(Audio(wrong[i]));
                if(i<2){
                  setState(() {
                    i++;
                    k++;
                  });
                }
                else {
                  Navigator.pop(context);
                }
                },width: 120.0,height: 70.0,),
            ],
          )
        ],
      ),
      ),
    );
  }
}
List<String>song=['assets/audio/kid-a.mp3','assets/audio/kid-l.mp3','assets/audio/kid-m.mp3'];
List<String>wrong=['assets/audio/kid-b.mp3','assets/audio/kid-c.mp3','assets/audio/kid-n.mp3'];
List<String>word=['p__kistan','App_e','ga__e'];
List<String>correct=['a','l','m'];
List<String>uncorrect=['b','c','n'];
