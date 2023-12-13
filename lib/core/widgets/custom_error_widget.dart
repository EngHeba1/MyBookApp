import 'package:bookly/core/uitls/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key,required this.error});
 final String error;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(error,style: MyTextStyle.textStyle18(),textAlign: TextAlign.center,));
  }
}
