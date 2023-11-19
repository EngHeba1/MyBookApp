import 'package:flutter/material.dart';

import '../../../../core/uitls/style/app_colors.dart';
import '../../../../core/uitls/style/text_style.dart';
import 'custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
              text: "19.99€",
              style: MyTextStyle.textStyle18().copyWith(color: Colors.black,fontWeight: FontWeight.normal),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16))),
        ),
        Expanded(
          child: CustomButton(text: "Free preview",
              style:  MyTextStyle.textStyle18(),
              color: AppColors.orange,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16))),
        )
      ],
    );
  }
}
