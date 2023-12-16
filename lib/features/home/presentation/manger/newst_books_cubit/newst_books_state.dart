part of 'newst_books_cubit.dart';

abstract class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksLoading extends NewstBooksState {}

final class NewstBooksFailuer extends NewstBooksState {
  String errorMessage;

  NewstBooksFailuer(this.errorMessage);

}

final class NewstBooksSuccess extends NewstBooksState {
  List<BookModel>books;

  NewstBooksSuccess(this.books);
}