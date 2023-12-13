import 'package:bookly/features/home/presentation/widgets/simeller_books_section.dart';
import 'package:bookly/features/home/presentation/widgets/simeller_boxs_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/uitls/style/text_style.dart';
import 'book_details_section.dart';
import 'book_rateing.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

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
              const BookDetailsSection(),
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
