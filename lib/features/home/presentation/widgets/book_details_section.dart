import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/uitls/style/text_style.dart';
import 'book_rateing.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({required this.bookModel, super.key});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: CustomBookImage(
              url: bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
            )),
        SizedBox(height: 43.h),
        Text(bookModel.volumeInfo?.title ?? "",
            textAlign: TextAlign.center,
            style: MyTextStyle.textStyle20().copyWith(
              fontWeight: FontWeight.w800,
            )),
        SizedBox(height: 4.h),
        Opacity(
            opacity: .7,
            child: Text(bookModel.volumeInfo?.authors?[0] ?? "",
                style: MyTextStyle.textStyle18().copyWith(
                    fontWeight: FontWeight.w500, fontStyle: FontStyle.italic))),
        SizedBox(height: 14.h),
        Center(
            child: BookRating(
          rating: (bookModel.volumeInfo.averageRating ?? 0),
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        )),
        SizedBox(height: 37.h),
        BookAction(),
      ],
    );
  }
}
