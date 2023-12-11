import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/uitls/style/text_style.dart';
import 'book_rateing.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'feture_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: CustomBookImage(url: 'EgZjaHJvbWUyBggAEEUYOTIKCAEQABixAxiABDIGCAIQRRhAMgcIAxAAGIAEMgcIBBAuGIAEMgYIBRBFGD0yBggGEEUYPDIGCAcQRRg80gEIMzc0NGowajeoAgCwAgA',)),
        SizedBox(height: 43.h),
        Text("The Jungle Book",
            style: MyTextStyle.textStyle30()
                .copyWith(fontWeight: FontWeight.w800)),
        SizedBox(height: 4.h),
        Opacity(
            opacity: .7,
            child: Text("     Rudyard Kipling",
                style: MyTextStyle.textStyle18().copyWith(
                    fontWeight: FontWeight.w500, fontStyle: FontStyle.italic))),
        SizedBox(height: 14.h),
        Center(child: BookRating()),
        SizedBox(height: 37.h),
        BookAction(),
      ],
    );
  }
}
