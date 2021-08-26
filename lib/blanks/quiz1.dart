import 'package:abc_flutter/puzzle/src/flutter.dart';
import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new MathQuiz();

class MathQuiz {

  var questions = [
    "_______ going to school",
    "_______ is a little girl",
    "_______  has wings",
    "_______  are my friends",
  ];

  var choices = [
    ["He", "They", "It", "Their"],
    ["They", "It", "She", "He"],
    ["He", "They", "It", "Their"],
    ["They", "It", "She", "He"]
  ];

  var correctAnswers = ["He", "She", "It", "They"];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/11.jpg",
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Question ${questionNumber + 1} of ${quiz.questions.length}",
                        style: new TextStyle(fontSize: 22.0,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        "Score: $finalScore",
                        style: new TextStyle(fontSize: 22.0,color: Colors.white,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(10.0)),


                new Padding(padding: EdgeInsets.all(50.0)),

                new Text(
                  quiz.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,fontWeight: FontWeight.bold
                  ),
                ),

                new Padding(padding: EdgeInsets.all(40.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.green,
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][0],
                        style:
                        new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.green,
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][1],
                        style:
                        new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.green,
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][2],
                        style:
                        new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.green,
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][3],
                        style:
                        new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child: new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: resetQuiz,
                        child: new Text(
                          "Quit",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ))),
              ],
            ),
          )),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                  score: finalScore,
                )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({key, required this.score}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(appBar: AppBar(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Final Score: $score",
                style: new TextStyle(fontSize: 35.0,color: Colors.green,fontWeight: FontWeight.bold),
              ),
              new Padding(padding: EdgeInsets.all(30.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text(
                  "Reset Quiz",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
