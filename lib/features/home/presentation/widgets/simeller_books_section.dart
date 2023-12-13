import 'package:bookly/features/home/presentation/widgets/simeller_boxs_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimellrBooksSection extends StatelessWidget {
  const SimellrBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
            )),
        SizedBox(height: 8.h),
        const SimellerBooksListView(),
      ],
    );
  }
}
