import 'package:bookly/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomHorizontalViewItem extends StatelessWidget {
  const CustomHorizontalViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height* .3,
      child: AspectRatio(
        aspectRatio: 2.8 /4,
        child: Container(
          decoration: BoxDecoration(  color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image:DecorationImage (image: AssetImage(AppAssets.test1),fit: BoxFit.fill),

          ),
        ),
      ),
    );
  }
}
