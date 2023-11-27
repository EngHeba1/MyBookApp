import 'package:bookly/features/home/data/errors/failuer.dart';

import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/uitls/api_service.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo{
  ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFetureBooks() async{
    try {
      var data=await apiService.get(endPoint:
      "volumes?q=subject:Programming&Filtering=free-ebooks");//return map but i want list so i need to
      //maping it

      List<BookModel> books=[];  // i want to return this list

      for( var item  in data["items"]){   //var item "list "
        books.add(BookModel.fromJson(item));  //
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioError)
      {
        return left(ServierFailure.fromDioError(e));
      }
      return left(ServierFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewstBook() async{
       try {
         var data=await apiService.get(endPoint:
         "volumes?Sorting=newest&q=subject:Programming&Filtering=free-ebooks");//return map but i want list so i need to
           //maping it
         
         List<BookModel> books=[];  // i want to return this list
         
      for( var item  in data["items"]){   //var item "list "
      books.add(BookModel.fromJson(item));  //
     }
      return right(books);
       } on Exception catch (e) {
         if(e is DioError)
         {
        return left(ServierFailure.fromDioError(e));
      }
         return left(ServierFailure(e.toString()));
    }
    }

}