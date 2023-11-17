import 'package:flutter/material.dart';

import '../widgets/custom_book_details_appbar.dart';
import '../widgets/feture_list_view_item.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              CustomBookDetailsAppBar(),
               Padding(padding: EdgeInsets.symmetric(
                   horizontal:MediaQuery.of(context).size.width*.17 ),
               child: FetureListViewItem())
            ],
          ),
        ),
      ),
    );
  }
}

