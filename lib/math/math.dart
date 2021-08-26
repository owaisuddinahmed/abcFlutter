import 'package:flutter/material.dart';
import './quiz1.dart';

class Math extends StatefulWidget {
  @override
  _MathState createState() => _MathState();
}

class _MathState extends State<Math> {
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

        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz,
                child: new Text(
                  "Math Quiz",
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void startQuiz() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Quiz1()));
    });
  }
}
