import 'package:bookly/core/uitls/style/text_style.dart';
import 'package:bookly/features/home/presentation/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'best_seller_list_view_item.dart';
import 'fetured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomAppBar(),
            FeturedBooks(),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Best Seller",
                style: MyTextStyle.textStyle20(),
              ),
            ),
          ]),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
