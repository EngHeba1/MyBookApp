import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/uitls/style/app_colors.dart';
import '../../../../../core/uitls/style/text_style.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;

  const BookRating(
      {Key? key,
        this.mainAxisAlignment = MainAxisAlignment.start,
        required this.rating,
        required this.count})
      : super(key: key);

  final num rating;
  final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating.toString(),
          style: MyTextStyle.textStyle16(),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style:  MyTextStyle.textStyle14()
        ),
      ],
    );
  }
}