import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/uitls/style/text_style.dart';
import '../views/book_details_view.dart';

class BestSellerListViewItem extends StatelessWidget {
      BestSellerListViewItem({required this.bookModel});
   BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: SizedBox(
        height: 125,
        child: GestureDetector(
          onTap: () => GoRouter.of(context).push("/BookDetailsView",extra: bookModel),
          //هاخد الموديل وأنا رايحه للسكرين الي بعدها واروح استقبله
          child: Row(
            children: [
              // AspectRatio(
              //   aspectRatio: 2.5 / 4,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.red,
              //       borderRadius: BorderRadius.circular(16),
              //       image: DecorationImage(
              //           image: AssetImage(AppAssets.test1), fit: BoxFit.fill),
              //     ),
              //   ),
              // ),
              CustomBookImage(url: bookModel.volumeInfo?.imageLinks?.thumbnail??""),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .55,
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
                      children: [
                        Text("Free",
                            style: MyTextStyle.textStyle20().copyWith(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w800)),
                        SizedBox(width: MediaQuery.of(context).size.width*.3),
                        Image.asset(AppAssets.star),
                        Text((bookModel.volumeInfo?.averageRating??"0") as String
                            , style: MyTextStyle.textStyle14()),
                        SizedBox(width: 10),
                        Text((bookModel.volumeInfo?.ratingsCount??"0") as String,
                            style: MyTextStyle.textStyle14().copyWith(
                              color: Colors.white.withOpacity(0.7),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
