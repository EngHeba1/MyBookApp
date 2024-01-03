import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/shimmer/shimmer_fetured_list_view.dart';
import '../../../../core/widgets/custom_loading_indecator.dart';
import '../manger/fetured_books_cubit/fetured_books_cubit.dart';
import 'custom_book_image.dart';
import 'package:carousel_slider/carousel_slider.dart';


class FeturedBooks extends StatelessWidget {
  const FeturedBooks({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeturedBooksCubit, FeturedBooksState>(

      builder: (BuildContext context, state) {
        if (state is FeturedBooksSuccess) {
          return CarouselSlider.builder(

            // physics: const BouncingScrollPhysics(),
            // scrollDirection: Axis.horizontal,
            itemBuilder: (context, index, s) =>
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: GestureDetector(
                  onTap: () => GoRouter.of(context).push("/BookDetailsView",extra: state.books[index]),
                  child: CustomBookImage(url: state.books[index].volumeInfo?.imageLinks?.thumbnail
                      ?? 'http://ecx.images-amazon.com/images/I/51vZFp-ETML.jpg',
                    borderRadius: 10.0,)),
            ),
            itemCount: state.books.length,
            options:  CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.5,
            viewportFraction: 0.45,
            enlargeCenterPage: true,
          ),
          );
        }
         else if (state is FeturedBooksFailure) {
          return CustomErrorWidget(error: state.errorMessage);
        }
        else {
          return const ShimmerFeaturedListView();
        }
      },

    );
  }
}
