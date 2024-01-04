import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/simeller_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_details_section.dart';


class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key,required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 BookDetailsSection(book:bookModel ),
                SizedBox(height: 10),
                const SimellrBooksSection(),

              ],
            ),
          ),
        );
  }
}
