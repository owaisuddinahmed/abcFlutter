import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'family_card.dart';
 class Member extends StatefulWidget {

   @override
   _MemberState createState() => _MemberState();
 }

 class _MemberState extends State<Member> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Color(0xe1ff8b31),
           title: Center(
               child: Text(
                 "Family Member",
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
               ),
             ),
           ),
           child: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Cardeee(j: 1,text2: 'Father',k: 'father',),
                     Cardeee(j: 2,text2: 'Mom',k: 'mom',),
                     Cardeee(j: 3,text2: 'Brother',k: 'brother',),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Cardeee(j: 4,text2: 'Sister',k: 'sister',),
                     Cardeee(j: 5,text2: 'GrandMa',k: 'grandma',),
                     Cardeee(j: 6,text2: 'GrandPa',k: 'grandpa',),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Cardeee(j: 7,text2: 'Uncle',k: 'uncle',),
                     Cardeee(j: 8,text2: 'Aunt',k: 'aunt',),
                     Cardeee(j: 9,text2: 'Cousin',k: 'cousin',),
                   ],
                 ),
               ],
             ),
           ),
         ),
       ),
     );

   }
 }


