import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/uitls/style/text_style.dart';

class ListViewSearchItem extends StatelessWidget {
  const ListViewSearchItem({super.key,required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 125,
        child: GestureDetector(
          onTap: () => GoRouter.of(context).push("/BookDetailsView",extra: bookModel as BookModel),
          child: Row(
            children: [
              CustomBookImage(url: bookModel.volumeInfo?.imageLinks?.thumbnail??""),
              const SizedBox(
                width: 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .55,
                        child: Text(
                          bookModel.volumeInfo?.title ?? "",
                          style: MyTextStyle.textStyle20(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )),
                    Text(bookModel.volumeInfo?.authors?[0] ?? "",
                        style: MyTextStyle.textStyle14()
                            .copyWith(color: Colors.white.withOpacity(0.7))),
                    // Row(
                    //   children: [
                    //     Text("19.99 €",
                    //         style: MyTextStyle.textStyle20().copyWith(
                    //             fontFamily: "Montserrat",
                    //             fontWeight: FontWeight.w800)),
                    //     SizedBox(width: 45),
                    //     Image.asset(AppAssets.star),
                    //     Text("4.8", style: MyTextStyle.textStyle16()),
                    //     SizedBox(width: 10),
                    //     Text("(2390)",
                    //         style: MyTextStyle.textStyle14().copyWith(
                    //           color: Colors.white.withOpacity(0.7),
                    //         ))
                    //   ],
                    // )
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
