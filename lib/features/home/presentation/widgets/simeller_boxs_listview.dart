import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  .height * .15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) =>
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    url: state.books[index].volumeInfo?.imageLinks?.thumbnail??"",),
                ),
                itemCount: state.books.length,
              ),
            );
          }
          else if (state is SimellerBooksFauiler) {
            return ErrorWidget(state.errorMessage);
          }
          return const CustomLoadingIndecator();
        },

    );
  }
}
