import 'package:flutter/material.dart';

import '../widgets/custom_book_details_appbar.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}

