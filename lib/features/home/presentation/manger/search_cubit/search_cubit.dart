import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/models/repo/home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.homeRepo}) : super(SearchInitial());
  HomeRepo homeRepo;

  Future<void> fetchSearchBooks({ required String q})async{

    emit(Searchloading());
    var result= await homeRepo.searchResult(q: q);
    result.fold((Failure) {
      emit(SearchFaulier(Failure.errorMessage));
    }
        , (books) {
          emit(SearchSuccess(books));
        });

  }
}
