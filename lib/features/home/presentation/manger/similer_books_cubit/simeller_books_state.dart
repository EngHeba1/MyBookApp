part of 'simeller_books_cubit.dart';

sealed class SimellerBooksState extends Equatable {
  const SimellerBooksState();

  @override
  List<Object> get props => [];
}

final class SimellerBooksInitial extends SimellerBooksState {}

final class SimellerBooksSucess extends SimellerBooksState {
  final List<BookModel>books;

  SimellerBooksSucess(this.books);
}

final class SimellerBooksFauiler extends SimellerBooksState {
  final String errorMessage;

  SimellerBooksFauiler(this.errorMessage);
}

final class SimellerBooksLoding extends SimellerBooksState {}
