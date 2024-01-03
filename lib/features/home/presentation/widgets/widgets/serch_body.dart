
import 'package:bookly/features/home/presentation/widgets/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/uitls/style/text_style.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../manger/search_cubit/search_cubit.dart';
import 'custom_textfiled.dart';

class SerchBody extends StatefulWidget {
   SerchBody();

  @override
  State<SerchBody> createState() => _SerchBodyState();
}

class _SerchBodyState extends State<SerchBody> {
  @override
  void initState() {
    //BlocProvider.of<SearchCubit>(context).fetchSearchBooks(querySearch: text);
    super.initState();
  }
 // final BookModel bookModel;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {
              GoRouter.of(context).pop();
            }, icon: const Icon(Icons.close)),
              Expanded(
                child: CustomTextField()
                ),
             ]),

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
