import 'package:bookly/core/uitls/style/app_colors.dart';
import 'package:bookly/features/home/presentation/widgets/book_rateing.dart';
import 'package:bookly/features/home/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/uitls/style/text_style.dart';
import '../widgets/books_action.dart';
import '../widgets/custom_book_details_appbar.dart';
import '../widgets/feture_list_view_item.dart';
import '../widgets/simeller_boxs_listview.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBookDetailsAppBar(),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .2),
                  child: FetureListViewItem()),
              SizedBox(height: 43.h),
              Text("The Jungle Book",
                  style: MyTextStyle.textStyle30()
                      .copyWith(fontWeight: FontWeight.w800)),
              SizedBox(height: 4.h),
              Opacity(
                  opacity: .7,
                  child: Text("     Rudyard Kipling",
                      style: MyTextStyle.textStyle18().copyWith(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic))),
              SizedBox(height: 14.h),
              Center(child: BookRating()),
              SizedBox(height: 37.h),
              BookAction(),
              SizedBox(height: 30.h),
              Align(alignment: Alignment.centerLeft,
                  child: Text("You can also like",)),
              SizedBox(height: 8.h),
              BestViewListView()

            ],
          ),
        ),
      ),
    );
  }
}
