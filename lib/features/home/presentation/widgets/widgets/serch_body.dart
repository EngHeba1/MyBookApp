
import 'package:bookly/features/home/presentation/widgets/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/uitls/style/text_style.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../manger/search_cubit/search_cubit.dart';
import 'custom_textfiled.dart';

class SerchBody extends StatelessWidget {
  const SerchBody({super.key});
 // final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        children: [
          CustomTextField(controller: ),
          const SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Search Result",
                style: MyTextStyle.textStyle20(),
              )),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
