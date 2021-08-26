
import 'package:abc_flutter/puzzle/src/flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../styleButton.dart';







class ShowPoems extends StatefulWidget {

  ShowPoems({this.name,this.name2});
  final  name;
  final name2;

  get title => null;




  @override
  _ShowPoemsState createState() => _ShowPoemsState();
}


class _ShowPoemsState extends State<ShowPoems> {
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xe1ff8b31),
          title: Center(child: Text('poem',style: TextStyle(
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
                         Color(0xffff8b33).withOpacity(0.7),
                         Color(0xffecb071).withOpacity(0.7),
                       ],

                     ),
                     image: DecorationImage(image:
                         AssetImage(_setImage())


                         ,fit: BoxFit.fill )
                 ),

                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children:[Container(
                     child:SizedBox(
                       height: 400,
                       child: ListView(
                         children:  poemList(),
                       ),
                     )
                   ),
                     StyleButton(text: 'Back',onPress: (){
                     setState(() {
                     assetsAudioPlayer.pause();
                     });
                       Navigator.pop(context);}),

                   ],
                 ),
               ),
             ),
           ),
        )
    );
  }

}

String _backgroundImage ="";

String _setImage() {


  // ignore: unrelated_type_equality_checks
  if( Twinkle == Twinkle) {
    _backgroundImage = "assets/poems/star.gif";
  } else if(Jack == Jack) {
    _backgroundImage = "assets/poems/rain.gif";
  }
  else if(Baa == Baa) {
    _backgroundImage = "assets/poems/star1.gif";
  }
  else if(wee == wee) {
    _backgroundImage = "assets/poems/rain.gif";
  }
  else {
    _backgroundImage = "assets/poems/star.gif";
  }
  print(List);
  print("_backgroundImage: $_backgroundImage");
  return _backgroundImage; // here it returns your _backgroundImage value

}


List <String> Twinkle =["Twinkle, twinkle, little star",
   "How I wonder what you are",
"Up above the world so high",
    "Like a diamond in the sky",
"Twinkle, twinkle, little star",
"How I wonder what you are!",

"When the blazing sun is gone",
"When he nothing shines upon",
"Then you show your little light",
"Twinkle, twinkle, all the night",
"Twinkle, twinkle, little star",
"How I wonder what you are!",

"Then the traveler in the dark",
"Thanks you for your tiny spark",
"How could he see where to go?",
"If you did not twinkle so",
"Twinkle, twinkle, little star",
"How I wonder what you are!",

"In the dark blue sky you keep",
"While you through my window peep",
"And you never shut your eye",
  "Till the sun is in the sky",
  " Twinkle, twinkle, little star",
  "How I wonder what you are!",];
List Jack=[
"Jack and Jill",
"Went up the hill",
"To fetch a pail of water",
"Jack fell down",
"And broke his crown",
"And Jill came tumbling after.",
"Up Jack got",
"And home did trot",
"As fast as he could caper",
"Went to bed",
"To mend his head",
  "With vinegar and brown paper",
];
List Baa=[
"Baa, baa, black sheep",
"Have you any wool?",
"Yes sir, yes sir",
"Three bags full",
"One for the master",
"And one for the dame",
  "And one for the little boy",
  "Who lives down the lane",
];
List Fat=[
"I’ve a cat named Vesters",
"And he eats all day",
"He always lays around",
"And never wants to play",

"Not even with a squeaky toy",
"Nor anything that moves",
"When I have him exercise",
"He always disapproves",

"So we’ve put him on a diet",
"   But now he yells all day",
"And even though he’s thinner",
"   He still won’t come and play",
];
List wee=[
"Wee Willie Winkie",
"Runs through the town",
'Upstairs and downstairs',
'In his night gown',
'Tapping at the window',
    'Crying at the lock',
"Are the children all in bed",
"For it’s past ten o’clock?",
"Hey Willie Winkie",
"Are you coming in?",
"The cat’s singing purring sounds",
"To the sleeping hen",
"The dog’s spread out on the floor",
"and doesn’t give a cheep",
 "   But here’s a wakeful little boy",
"who will not fall asleep.",
"Anything but sleep, you rogue",
 "   Glowering like the moon",
"Rattling in an iron jug",
"With an iron spoon",
"Rumbling, tumbling round about",
"Crowing like a cock",
    "Shrieking like a I don’t know what",
"Waking sleeping folk.",
"Hey WIllie Winkie-",
"The child’s in a creel!",
"Wriggling off everybody’s kne",
"Like an eel.",
"Tugging at the cat’s leg",
    "Confusing all her thrums-",
"Hey Willie Winkie",
"See, there he comes.”",
"Weary is the mother",
"Who has a dusty child",
"A small, short little child",
"That can’t run on his own",
"That always has a battle with sleep",
"Before he’ll close an eye,",
   " But a kiss from his rosy lips",
"Gives strength anew to me.",
];

