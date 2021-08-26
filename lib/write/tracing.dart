import 'dart:ui';
import 'package:abc_flutter/puzzle/src/flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../styleButton.dart';

class DrawingArea {
  Offset point;
  Paint areaPaint;

  DrawingArea({required this.point, required this.areaPaint});
}

class TracingAlphabet extends StatefulWidget {
  @override
  _TracingAlphabetState createState() => _TracingAlphabetState();
}

class _TracingAlphabetState extends State<TracingAlphabet> {
  List<DrawingArea> points = [];
   Color selectedColor = Colors.black;
   double strokeWidth = 2.0;
  int i = 1;
  int j =2;


  @override
  void initState() {
    super.initState();
    selectedColor = Colors.black;
    strokeWidth = 2.0;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    void selectColor() {
      showDialog(
        context: context,
        builder: (BuildContext contex) {
          return new
          AlertDialog(
            title: const Text('Color Chooser'),
            content: SingleChildScrollView(
              child: BlockPicker(
                pickerColor: selectedColor,
                onColorChanged: (color) {
                  this.setState(() {
                    selectedColor = color;
                  });
                },
              ),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ],

          );

        });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        actions: [Icon(Icons.navigate_next_outlined)],
        title: Center(
            child: Text(
              "Tracing Alphabet",
              style: TextStyle(fontWeight: FontWeight.w300),
            )),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/11.jpg",
                    ))),),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [



                    Stack(

                      children:<Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 100.0),

                          padding: EdgeInsets.all(15.0),

                          height: MediaQuery.of(context).size.height/2,
                          child:   Image.asset('assets/letter/$i.png'),

                        ),

                        Center(
                          child: Container(


                            width: width * 0.80,
                            height: height * 0.80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  )
                                ]),



                            child: GestureDetector(
                              onPanDown: (details) {
                                this.setState(() {
                                  points.add(DrawingArea(
                                      point: details.localPosition,
                                      areaPaint: Paint()
                                        ..strokeCap = StrokeCap.round
                                        ..isAntiAlias = true
                                        ..color = selectedColor
                                        ..strokeWidth = strokeWidth));
                                });
                              },
                              onPanUpdate: (details) {
                                this.setState(() {
                                  points.add(DrawingArea(
                                      point: details.localPosition,
                                      areaPaint: Paint()
                                        ..strokeCap = StrokeCap.round
                                        ..isAntiAlias = true
                                        ..color = selectedColor
                                        ..strokeWidth = strokeWidth));
                                });

                              },
                              onPanEnd: (_) {

                                this.setState(() {
                                  // ignore: unnecessary_statements
                                  points.add;
                                });
                              },

                              child: SizedBox.expand(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  child: CustomPaint(
                                    painter: MyCustomPainter(points: points),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 95.0,top: 490.0),

                        child: StyleButton(
                          width: 150.0,
                          height: 50.0,
                          text: "next",
                          onPress: () {
                            AssetsAudioPlayer.newPlayer().open(Audio("assets/songs/1$j.mp3"));
                            setState(() {
                              points.clear();
                              if(i<27) {
                                i++;
                                j++;
                              }
                              else{
                                Navigator.pop(context);
                              }
                            });
                          },
                        ),
                        )

                    ],
                    ),
                  ],
                ),
                Container(
                  width: width * 0.80,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.color_lens,
                            color: selectedColor,
                          ),
                          onPressed: () {
                            selectColor();
                          }),

                      Expanded(
                        child: Slider(
                          min: 1.0,
                          max: 5.0,
                          label: "Stroke $strokeWidth",
                          activeColor: selectedColor,
                          value: strokeWidth,
                          onChanged: (double value) {
                            this.setState(() {
                              strokeWidth = value;
                            });
                          },
                        ),
                      ),

                      IconButton(
                          icon: Icon(
                            Icons.layers_clear,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            this.setState((){
                              points.clear();
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  List<DrawingArea> points;

  MyCustomPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.white.withOpacity(0.7);

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
    canvas.clipRect(rect);

    for (int x = 0; x < points.length - 1; x++) {
      if (points[x] != null && points[x + 1] != null) {
        canvas.drawLine(points[x].point, points[x + 1].point, points[x].areaPaint);
      } else if (points[x] != null && points[x + 1] == null) {
        canvas.drawPoints(PointMode.points, [points[x].point], points[x].areaPaint);
      }
    }
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return oldDelegate.points != points;
  }
}
