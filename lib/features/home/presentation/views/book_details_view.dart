import 'package:bookly/core/uitls/style/app_colors.dart';
import 'package:bookly/features/home/presentation/widgets/book_rateing.dart';
import 'package:bookly/features/home/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/uitls/style/text_style.dart';
import '../widgets/book_details_body.dart';
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
        body: BookDetailsBody(),
      ),
    );
  }
}
