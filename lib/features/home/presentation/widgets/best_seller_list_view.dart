import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => BestSellerListViewItem(),
      itemCount: 10,
    );
  }
}