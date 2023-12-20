part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class Searchloading extends SearchState {}

final class SearchFaulier extends SearchState {
  final String errorMessage;

  SearchFaulier(this.errorMessage);
}

final class SearchSuccess extends SearchState {
  final List<BookModel>books;

  SearchSuccess(this.books);
}