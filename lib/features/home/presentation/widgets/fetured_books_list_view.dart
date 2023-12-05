import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_loading_indecator.dart';
import '../manger/fetured_books_cubit/fetured_books_cubit.dart';
import 'feture_list_view_item.dart';

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
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FetureListViewItem(),
              ),
              itemCount: 4,
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
