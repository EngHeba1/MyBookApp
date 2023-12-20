import 'package:bookly/features/home/data/errors/failuer.dart';
import 'package:dartz/dartz.dart';

import '../book_model/book_model.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewstBook();

 Future<Either<Failure,List<BookModel>>> fetchFetureBooks();

 Future<Either<Failure,List<BookModel>>> fetchSimellerBooks(
     { required String title});

 Future<Either<Failure,List<BookModel>>> searchResult(
     {required String q});
}