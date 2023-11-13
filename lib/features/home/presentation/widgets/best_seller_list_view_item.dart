
import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
            aspectRatio: 2.5/ 4,
            child: Container(
              decoration: BoxDecoration(  color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image:DecorationImage (image: AssetImage(AppAssets.test1),fit: BoxFit.fill),

              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
