import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/uitls/style/text_style.dart';
import '../views/book_details_view.dart';
import 'book_rateing.dart';

class BestSellerListViewItem extends StatelessWidget {
      BestSellerListViewItem({required this.bookModel});
   BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 133,
        child: GestureDetector(
          onTap: () => GoRouter.of(context).push("/BookDetailsView",extra: bookModel),
          //هاخد الموديل وأنا رايحه للسكرين الي بعدها واروح استقبله
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                  child: CustomBookImage(url: bookModel.volumeInfo?.imageLinks?.thumbnail??'http://ecx.images-amazon.com/images/I/51vZFp-ETML.jpg')),

              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child: Text(
                            bookModel.volumeInfo?.title??"",
                            style: MyTextStyle.textStyle20(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                         Text(bookModel.volumeInfo?.authors?[0]??"",
                            style: MyTextStyle.textStyle14()
                                .copyWith(color: Colors.white.withOpacity(0.7),
                              overflow: TextOverflow.ellipsis,)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                           " free",
                            style: MyTextStyle.textStyle20()
                            ,
                          ),
                          BookRating(
                            rating: bookModel.volumeInfo!.averageRating ?? 0,
                            count: bookModel.volumeInfo!.ratingsCount ?? 0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
