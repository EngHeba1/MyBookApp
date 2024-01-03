import 'package:bookly/core/shimmer/shimmer_newst_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/custom_loading_indecator.dart';
import '../manger/newst_books_cubit/newst_books_cubit.dart';
import 'best_seller_list_view_item.dart';
import 'package:shimmer/shimmer.dart';

import 'custom_book_image.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit,NewstBooksState>(
      builder:(context, state) {
        if(state is NewstBooksSuccess){
          return   ListView.separated(
            separatorBuilder:(context, index) => const SizedBox(height: 15.0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => BestSellerListViewItem(bookModel: state.books[index]),
            itemCount: state.books.length,
          );
        }
        else if(state is NewstBooksFailuer){
          return CustomErrorWidget(error: state.errorMessage);
        }
       // else if (state is NewstBooksLoading) {
          // Use Shimmer for loading state
          // return Shimmer.fromColors(
          //   baseColor: Colors.grey[300]!,
          //   highlightColor: Colors.grey[100]!,
          //   child: ListView.builder(
          //     physics: const NeverScrollableScrollPhysics(),
          //     padding: EdgeInsets.zero,
          //     itemBuilder: (context, index) =>CustomBookImage(url: "https://www.google.com/search?q=child&sca_esv=589788475&hl=en&tbm=isch&sxsrf=AM9HkKmhzuFEdHtKQFYJpn2XlOMzkyoDrg%3A1702303828630&source=hp&biw=1366&bih=641&ei=VBh3ZcCII8-6xc8PqZiu4Ao&iflsig=AO6bgOgAAAAAZXcmZI6kOLfjcBb2ER4ITBJoI4nVVFtJ&ved=0ahUKEwjAgoL4x4eDAxVPXfEDHSmMC6wQ4dUDCAc&uact=5&oq=child&gs_lp=EgNpbWciBWNoaWxkMgUQABiABDIIEAAYgAQYsQMyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABEi2JFCHDljMG3ABeACQAQCYAewBoAHABqoBBTAuMy4yuAEDyAEA-AEBigILZ3dzLXdpei1pbWeoAgLCAgcQIxjqAhgnwgIOEAAYgAQYigUYsQMYgwE&sclient=img#imgrc=4GOo1dxFbDn5yMqst26r"),
          //     itemCount: 5, // Set a placeholder itemCount
          //   ),
          // );
       // }
        return const ShimmerNewsetListView();
      } ,

    );
  }
}
