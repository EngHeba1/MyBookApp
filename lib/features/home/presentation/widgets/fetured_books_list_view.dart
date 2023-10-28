import 'package:bookly/features/home/presentation/widgets/feture_list_view_itemdart';
import 'package:flutter/material.dart';

class FeturedBooks extends StatelessWidget {
  const FeturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height* .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: FetureListViewItem(),
        ),
        itemCount: 4,
      ),
    );
  }
}
