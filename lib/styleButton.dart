import'package:flutter/material.dart';

class StyleButton extends StatelessWidget {
  StyleButton({this.onPress,this.text,this.width,this.height,});
  final onPress;
  final text;
   final width;
   final height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0x80000000),
                  blurRadius: 12.0,
                  offset: Offset(0.0, 5.0),
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffff8b33),
                  Color(0xffecb071),
                ],
              )),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
