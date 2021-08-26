import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:cool_alert/cool_alert.dart';

class MazeGame extends StatefulWidget {
  const MazeGame({Key? key}) : super(key: key);

  @override
  _MazeGameState createState() => _MazeGameState();
}

class _MazeGameState extends State<MazeGame> {
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
        child: Maze(
            player: MazeItem(
                'https://image.flaticon.com/icons/png/512/808/808433.png',
                ImageType.network),
            columns: 6,
            rows: 12,
            wallThickness: 4.0,
            wallColor: Theme.of(context).primaryColor,
            finish: MazeItem(
                'https://image.flaticon.com/icons/png/512/1506/1506339.png',
                ImageType.network),
            onFinish: () => CoolAlert.show(
                context: context,
                type: CoolAlertType.success,
                text: "you win the game!",
                onConfirmBtnTap: () {
                  Navigator.pop(context);
                })),
      ),
    );
  }
}
