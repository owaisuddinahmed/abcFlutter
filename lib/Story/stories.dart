import 'seletStories.dart';
import 'package:flutter/material.dart';
import 'package:abc_flutter/styleButton.dart';
class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(child: Text('Stories',style: TextStyle(
            fontWeight: FontWeight.w300
        ),)),
        elevation: 0.0,
      ),
      body: Container(
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
            StyleButton(text: 'TheBoyWhoCriedWolf ',onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=> ShowStories(name: TheBoyWhoCriedWolf,name2: 'assets/storey/1.mp3',)));},),
            StyleButton(text: 'TheGoldenEgg ',onPress: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=> ShowStories(name: TheGoldenEgg,name2: 'assets/storey/2.mp3',)));},),
          ],
        ),
      ),
    );
  }
}
