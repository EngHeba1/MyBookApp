import 'package:flutter/material.dart';
class MyTextStyle{   // هيحدد الستايل  الي هينشأها بناء علي ال مقاس الفونت
 static TextStyle textStyle14()=>
     TextStyle(
   fontSize: 14,
   fontWeight: FontWeight.normal   //regular
 );
 static TextStyle textStyle16()=>
     TextStyle(
         fontSize: 16,
         fontWeight: FontWeight.w600   //regular
     );
 static TextStyle textStyle18()=> TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
     color: Colors.white,
   fontStyle: FontStyle.normal,decoration: TextDecoration.none
 );
 static TextStyle textStyle20()=> TextStyle(
     fontSize: 20,
     fontWeight: FontWeight.normal,
     fontFamily: "GTSectraFine",
 );
 static TextStyle textStyle30()=> TextStyle(
   fontSize: 30,
   fontWeight: FontWeight.normal,
   fontFamily: "GTSectraFine",
   color: Colors.white
 );
}