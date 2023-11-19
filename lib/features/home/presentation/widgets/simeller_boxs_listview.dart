import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feture_list_view_item.dart';

class BestViewListView extends StatelessWidget {
  const BestViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height* .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal:5),
          child: FetureListViewItem(),
        ),
        itemCount: 4,  ),);


  }
}
