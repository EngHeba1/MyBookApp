import 'package:bookly/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class FetureListViewItem extends StatelessWidget {
  const FetureListViewItem({super.key,required this.url});
   final String url;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: NetworkImage(url), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
