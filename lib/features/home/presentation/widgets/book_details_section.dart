import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/uitls/style/text_style.dart';
import 'book_rateing.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({required this.book, super.key});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
        child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CustomBookImage(
         borderRadius: 10.0,
         url:  book.volumeInfo!.imageLinks?.thumbnail ??
    'http://ecx.images-amazon.com/images/I/51vZFp-ETML.jpg',
    ),
    ),
    ),
        SizedBox(height: 10.h),
        Text(book.volumeInfo?.title ?? 'Title Not Found',
            textAlign: TextAlign.center,
            style: MyTextStyle.textStyle20().copyWith(
              fontWeight: FontWeight.w800,
            )),
        SizedBox(height: 4.h),
        Opacity(
            opacity: .7,
            child: Text(book.volumeInfo?.authors?[0] ?? "",
                style: MyTextStyle.textStyle18().copyWith(
                    fontWeight: FontWeight.w500, fontStyle: FontStyle.italic))),
        SizedBox(height: 10.h),
        Center(
            child: BookRating(
          rating: (book.volumeInfo?.averageRating ?? 0),
          count: book.volumeInfo?.ratingsCount ?? 0,
        )),
        SizedBox(height: 10.h),
        BookAction(bookModel: book),
      ],
    );
  }
}


