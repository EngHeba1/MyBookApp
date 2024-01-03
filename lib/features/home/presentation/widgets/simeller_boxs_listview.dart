import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shimmer/shimmer_similar_listview.dart';
import '../../../../core/widgets/custom_loading_indecator.dart';
import '../manger/similer_books_cubit/simeller_books_cubit.dart';
import 'custom_book_image.dart';

class SimellerBooksListView extends StatelessWidget {
  const SimellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <SimellerBooksCubit, SimellerBooksState>(
        builder: (BuildContext context, state) {
          if (state is SimellerBooksSucess) {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .18,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index){
                  return AspectRatio(
                      aspectRatio: 2.7 / 4,
                      child: CustomBookImage(
                        borderRadius: 8.0,
                          url:  state.books[index].volumeInfo!.imageLinks?.thumbnail ??
                            'http://ecx.images-amazon.com/images/I/51vZFp-ETML.jpg',
                      ));
                }
                   ,

                itemCount: state.books.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10.0);
                },
              ));

          }
          else if (state is SimellerBooksFauiler) {
            return ErrorWidget(state.errorMessage);
          }
          return const ShimmerSimilarBooksListView();
        },

    );
  }
}
