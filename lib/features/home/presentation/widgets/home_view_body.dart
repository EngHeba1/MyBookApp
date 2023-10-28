import 'package:bookly/features/home/presentation/widgets/feture_list_view_itemdart';
import 'package:bookly/features/home/presentation/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';

import 'fetured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppBar(),
      FeturedBooks()
    ],);
  }
}



