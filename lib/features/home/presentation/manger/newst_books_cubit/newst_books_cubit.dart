import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo): super(NewstBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchNewstBooks()async{
    emit(NewstBooksLoading());
    var result= await homeRepo.fetchNewstBook();
    result.fold((Failure) {
      emit(NewstBooksFailuer(Failure.errorMessage));
    }
        , (books) {
          emit(NewstBooksSuccess(books));
        });

  }

}
