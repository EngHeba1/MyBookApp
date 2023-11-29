import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit(this.homeRepo) : super(FeturedBooksInitial());
  HomeRepo homeRepo;

 Future<void> fetchFeturedBooks()async{
   emit(FeturedBooksLoading());
    var result= await homeRepo.fetchFetureBooks();
    result.fold((Failure) {
      emit(FeturedBooksFailure(Failure.errorMessage));
    }
    , (books) {
      emit(FeturedBooksSuccess(books));
        });

  }
}
