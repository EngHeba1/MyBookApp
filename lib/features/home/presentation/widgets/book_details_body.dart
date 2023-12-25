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
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               BookDetailsSection(bookModel:bookModel ),
              Expanded(child: SizedBox(height: 30.h)),
              const SimellrBooksSection(),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ))
      ],
    );
  }
}
