import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/uitls/style/app_colors.dart';
import '../../../../core/uitls/style/text_style.dart';
import 'custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key,required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
              text: "Free",
              style: MyTextStyle.textStyle18()
                  .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16))),
        ),
        Expanded(
          child: CustomButton(
              text: "Free preview",
              onPressed:() async {
                final Uri _url = Uri.parse(bookModel.volumeInfo.previewLink!);
               if (!await canLaunchUrl(_url)) {
              throw Exception('Could not launch $_url');
                 print("?????????????????????????????????????////");
              }
               else{
                 print("=============================================");
                 await launchUrl(_url);
               }},
              style: MyTextStyle.textStyle18(),
              color: AppColors.orange,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16))),
        )
      ],
    );
  }
}
