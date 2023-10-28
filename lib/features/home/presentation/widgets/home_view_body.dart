import 'package:bookly/features/home/presentation/widgets/custom_horizontal_list_view_item.dart';
import 'package:bookly/features/home/presentation/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppBar(),
      CustomHorizontalViewItem()
    ],);
  }
}



