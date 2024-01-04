import 'package:bookly/core/uitls/style/text_style.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'fetured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomAppBar(),
            const FeturedBooks( ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Newest Books",
                style: MyTextStyle.textStyle20(),
              ),
            ),
                const SizedBox( height: 30,),

              ]),
        ),
        const SliverFillRemaining(

          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
