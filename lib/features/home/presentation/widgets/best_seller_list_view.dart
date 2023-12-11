import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/custom_loading_indecator.dart';
import '../manger/newst_books_cubit/newst_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit,NewstBooksState>(
      builder:(context, state) {
        if(state is NewstBooksSuccess){
          return  ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => BestSellerListViewItem(bookModel: state.books[index]),
            itemCount: state.books.length,
          );
        }
        else if(state is NewstBooksFailuer){
          return CustomErrorWidget(error: state.errorMessage);
        }
        return CustomLoadingIndecator();
      } ,

    );
  }
}
