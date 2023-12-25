import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
import '../manger/search_cubit/search_cubit.dart';
import '../widgets/widgets/serch_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});
  //final BookModel bookModel;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SerchBody(),
    );
  }
}