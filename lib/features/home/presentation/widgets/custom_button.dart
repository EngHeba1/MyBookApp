import 'package:bookly/core/uitls/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.text,
      required this.color,
      this.borderRadius,
      required this.style, onPressed});
  String text;
  Color color;
  BorderRadius? borderRadius;
  TextStyle style;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
            backgroundColor: color),
      ),
    );
  }
}
