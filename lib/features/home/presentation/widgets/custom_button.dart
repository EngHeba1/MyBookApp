import 'package:bookly/core/uitls/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,required this.color, this.borderRadius,required this.style});
 String text;
 Color color;
 BorderRadius? borderRadius;
 TextStyle style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(onPressed: (){},
          child: Text(text,style:style,),
      style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:borderRadius??BorderRadius.circular(16) ,)
          ,backgroundColor:color ),),
    );
  }
}
