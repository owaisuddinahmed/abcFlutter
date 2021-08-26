import 'package:abc_flutter/styleButton.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class ShowStories extends StatefulWidget {
  ShowStories({ this.name,this.name2});
final name;
final name2;

  @override
  _ShowStoriesState createState() => _ShowStoriesState();
}

class _ShowStoriesState extends State<ShowStories> {
  final assetsAudioPlayer =AssetsAudioPlayer();

  void initState() {
    // TODO: implement initState
    super.initState();
    assetsAudioPlayer.open(Audio(widget.name2));
    assetsAudioPlayer.play();
  }

  poemList(){
    List<Widget> showText=[];
    for(var list in widget.name){
      final text =Text(list,style: TextStyle(
          fontSize: 20,
          color: Colors.white
      ),);
      showText.add(text);
    }
    return showText;
  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xe1ff8b31),
          title: Center(child: Text('Stories',style: TextStyle(
              fontWeight: FontWeight.w300
          ),)),
          elevation: 0.0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/11.jpg",),
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffff8b33),
                        Color(0xffecb071),
                      ],
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Container(
                      child: SizedBox(
                        height: 400,
                        child: ListView(
                          children: poemList(),
                        ),
                      ),
                    ),
                    StyleButton(text: 'Back',onPress: (){
                      setState(() {
                        assetsAudioPlayer.pause();
                      });
                      Navigator.pop(context);}),
                  ]
                ),
              ),
            ),
          ),
        )
    );
  }
}
List<String> TheBoyWhoCriedWolf=[
"Once upon a time, there lived a shepherd boy who was bored watching his flock of sheep on the hill",
"  amuse himself, he shouted, “Wolf! Wolf! The sheep are being chased by the wolf!” The villagers came running to help the boy and save the sheep",
"They found nothing and the boy just laughed looking at their angry faces",

"“Don’t cry ‘wolf’ when there’s no wolf boy!”, they said angrily and left The boy just laughed at them.",

"After a while, he got bored and cried ‘wolf!’ again, fooling the villagers a second time. The angry villagers warned the boy a second time and left."," The boy continued watching the flock. After a while, he saw a real wolf and cried loudly", "“Wolf! Please help! The wolf is chasing the sheep. Help!”",

"But this time, no one turned up to help. By evening, when the boy didn’t return home, the villagers wondered what happened to him and went up the hill. The boy sat on the hill weeping. “Why didn’t you come when I called out that there was a wolf?” he asked angrily. “The flock is scattered now”, he said.",

"An old villager approached him and said, “People won’t believe liars even when they tell the truth. We’ll look for your sheep tomorrow morning. Let’s go home now”",
];
List<String> TheGoldenEgg=[
"Once upon a time", "a farmer had a goose that laid a golden egg every day."," The egg provided enough money for the farmer and his wife for their day-to-day needs.", "The farmer and his wife were happy for a long time. But one day, the farmer got an idea and thought", "“Why should I take just one egg a day? Why can’t I take all of them at once and make a lot of money?”",


"The foolish farmer’s wife also agreed and decided to cut the goose’s stomach for the eggs. As soon as they killed the bird and opened the goose’s stomach, to find nothing but guts and blood.", "The farmer, realizing his foolish mistake, cries over the lost resource!",

"The English idiom “kill not the goose that lays the golden egg” was also derived from this classic story",
];
