part of 'fetured_books_cubit.dart';

abstract class FeturedBooksState extends Equatable {
  const FeturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeturedBooksInitial extends FeturedBooksState {}

final class FeturedBooksLoading extends FeturedBooksState {}

final class FeturedBooksFailure extends FeturedBooksState {
  String errorMessage;

  FeturedBooksFailure(this.errorMessage);
}

final class FeturedBooksSuccess extends FeturedBooksState {
  List<BookModel> books;

  FeturedBooksSuccess(this.books);
}
