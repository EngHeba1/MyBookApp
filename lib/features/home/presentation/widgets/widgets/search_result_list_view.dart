import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/shimmer/shimmer_newst_list_view.dart';
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
        return  ListView.separated(
          shrinkWrap: true,

          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 0),

          itemCount: state.books.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => InkWell(
            onTap: (){
              GoRouter.of(context).push("/BookDetailsView", extra: state.books[index]);

            },
            child: BestSellerListViewItem(bookModel:state.books[index],),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 15.0),
        );
      }
      if( state is SearchFaulier ){

          return CustomErrorWidget(error: state.errorMessage);
      }
      else if(state is Searchloading){
        return const ShimmerNewsetListView();
      }
        return Container();
    });


  }
}
