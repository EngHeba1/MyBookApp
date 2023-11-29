import 'package:bookly/features/home/data/errors/failuer.dart';
import 'package:dartz/dartz.dart';

import '../book_model/book_model.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewstBook();

 Future<Either<Failure,List<BookModel>>> fetchFetureBooks();
}