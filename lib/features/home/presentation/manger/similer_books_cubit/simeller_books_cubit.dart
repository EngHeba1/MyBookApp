import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/models/repo/home_repo.dart';

part 'simeller_books_state.dart';

class SimellerBooksCubit extends Cubit<SimellerBooksState> {
  SimellerBooksCubit({required this.homeRepo}) : super(SimellerBooksInitial());
  HomeRepo homeRepo;



  Future<void> fetchSimellerBooks({required String title})async{
    emit(SimellerBooksLoding());
    
    var result= await homeRepo.fetchSimellerBooks(title: title );
    result.fold((Failure) {

      emit(SimellerBooksFauiler(Failure.errorMessage));
    }
        , (books) {
          emit(SimellerBooksSucess(books));
        });

  }

}


