import 'package:flutter/material.dart';
import '../widgets/widgets/serch_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  //final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SerchBody(),
    );
  }
}
