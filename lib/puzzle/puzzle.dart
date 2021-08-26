import '../puzzle/src/core/puzzle_animator.dart';
import '../puzzle/src/flutter.dart';
import '../puzzle/src/puzzle_home_state.dart';
import 'package:flutter/material.dart';


class PuzzleApp extends StatelessWidget {
  final int rows, columns;

  const PuzzleApp({this.columns = 4, this.rows = 4});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xe1ff8b31),
        title: Center(child: Text("ABC Game",style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 30
        ),)),
        elevation: 0.0,
      ),
      body:  _PuzzleHome(rows, columns),
    )
  );
}

class _PuzzleHome extends StatefulWidget {
  final int _rows, _columns;

  const _PuzzleHome(this._rows, this._columns);
  @override
  PuzzleHomeState createState() =>
      PuzzleHomeState(PuzzleAnimator(_columns, _rows));
}