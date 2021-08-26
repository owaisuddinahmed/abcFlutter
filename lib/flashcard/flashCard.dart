import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
class FlashCard extends StatefulWidget {
  @override
  _FlashCardState createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  bool check=false;
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
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/11.jpg",
              )),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color: Color(0xe1ff8b31),
                      child: SizedBox(
                          width: 100,
                          height: 150,
                          child: FlipCard(
                              flipOnTouch: false,
                              front: Container(
                                child: Center(child: Text('A',style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white
                                ),)),
                              ),
                              back: Container(
                                child: Text(
                                  'A',
                                  style: TextStyle(fontSize: 20, color: Colors.white),
                                ),
                              )
                          )
                      )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color:check?Colors.green: Color(0xe1ff8b31),
                      child: SizedBox(
                          width: 100,
                          height: 150,
                          child: FlipCard(
                              flipOnTouch: true,
                              front:Container(
                                child:Center(
                                  child:Text('??',style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.white
                                  ),),
                                )
                              ),
                              back: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    check=true;
                                  });
                                },
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'A',
                                      style: TextStyle(fontSize: 60, color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                          )
                      )
                  ),
                ),
                Container(
                    color: Color(0xe1ff8b31),
                    child: SizedBox(
                        width: 100,
                        height: 150,
                        child: FlipCard(
                            flipOnTouch: true,
                            front: Container(
                              child: Center(child: Text('??',style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white
                              ),)),
                            ),
                            back: Container(
                              child: Center(
                                child: Text(
                                  'B',
                                  style: TextStyle(fontSize: 60, color: Colors.white),
                                ),
                              ),
                            )
                        )
                    )
                ),
                Container(
                    color:Color(0xe1ff8b31),
                    child: SizedBox(
                        width: 100,
                        height: 150,
                        child: FlipCard(
                            flipOnTouch: true,
                            front: Container(
                              child: Center(child: Text('??',style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white
                              ),)),
                            ),
                            back: Container(
                              child: Center(
                                child: Text(
                                  'C',
                                  style: TextStyle(fontSize: 60, color: Colors.white),
                                ),
                              ),
                            )
                        )
                    )
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}
