import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/custom_loading_indecator.dart';
import '../manger/fetured_books_cubit/fetured_books_cubit.dart';
import 'custom_book_image.dart';

class FeturedBooks extends StatelessWidget {
  const FeturedBooks({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeturedBooksCubit, FeturedBooksState>(

      builder: (BuildContext context, state) {
        if (state is FeturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                    onTap: () => GoRouter.of(context).push("/BookDetailsView",extra: state.books[index]),
                    child: CustomBookImage(url: state.books[index].volumeInfo?.imageLinks?.thumbnail??"")),
              ),
              itemCount: state.books.length,
            ),
          );
        }
         else if (state is FeturedBooksFailure) {
          return CustomErrorWidget(error: state.errorMessage);
        }
        else  {
          return const CustomLoadingIndecator();
        }
      },

    );
  }
}
