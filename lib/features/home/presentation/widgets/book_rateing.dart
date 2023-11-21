import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/uitls/style/text_style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Text("19.99 €",style:MyTextStyle.textStyle20().
        // copyWith(fontFamily: "Montserrat",fontWeight: FontWeight.w800) ),
        SizedBox(width: 45),
        Image.asset(AppAssets.star),
        Text("4.8", style: MyTextStyle.textStyle16()),
        SizedBox(width: 10),
        Text("(2390)",
            style: MyTextStyle.textStyle14().copyWith(
              color: Colors.white.withOpacity(0.7),
            ))
      ],
    );
  }
}
