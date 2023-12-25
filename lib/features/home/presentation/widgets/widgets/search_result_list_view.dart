import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indecator.dart';
import '../../manger/search_cubit/search_cubit.dart';
import '../best_seller_list_view_item.dart';
import 'list_view_search_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <SearchCubit,SearchState>(builder: (context, state) {
      if( state is SearchSuccess ){
        return  ListView.builder(
          //  physics: const NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) =>  ListViewSearchItem(bookModel:state.books[index]),
          itemCount: state.books.length,
        );
      }
      if( state is SearchFaulier ){

          return CustomErrorWidget(error: state.errorMessage);
      }
      return const CustomLoadingIndecator();
    });


  }
}
