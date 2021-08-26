
import 'seletedPoem.dart';
import 'package:abc_flutter/styleButton.dart';
import 'package:flutter/material.dart';


class Poems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(child: Text("Poem",style: TextStyle(
            fontWeight: FontWeight.w300,
          fontSize: 30
        ),)),
        elevation: 0.0,
      ),
      body: Container(padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/11.jpg",)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyleButton(text: 'Twinkle, Twinkle',onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=> ShowPoems(name: Twinkle,name2: "assets/1.mp3", )));},),
            StyleButton(text: 'Jack And Jill',onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowPoems(name: Jack,name2: "assets/2.mp3",),));},),
            StyleButton(text: 'Black Sheep',onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowPoems(name: Baa,name2: "assets/music/9.mp3",)));},),
            StyleButton(text: "Wee Willie Winkie",onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowPoems(name: wee,name2: "assets/music/10.mp3",),));},),
            StyleButton(text: "My Cat Is Fat",onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowPoems(name: Fat,name2: "assets/day/cat.mp3",),));},),
          ],
        ),


      ),
    );
  }
}

