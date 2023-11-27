import 'package:dio/dio.dart';

abstract class Failure{
  String errorMessage;

  Failure(this.errorMessage);
}
class ServierFailure extends Failure{
  ServierFailure(super.errorMessage);

  factory ServierFailure.fromDioError(DioError dioError){
 switch(dioError.type){

   case DioErrorType.connectTimeout:
     return ServierFailure("Connection time out with Api server");
   case DioErrorType.sendTimeout:
     return ServierFailure("Send time out with Api server");
   case DioErrorType.receiveTimeout:
     return ServierFailure("Recive time out with Api server");
   case DioErrorType.response:
     return ServierFailure.fromResponse(dioError.response!.statusCode,dioError.response!.data);
   case DioErrorType.cancel:
     return ServierFailure("Request to API was cancelled");
   case DioErrorType.other:
    if(dioError.message.contains("SocketException")){
      return ServierFailure("No internet Connection");
    }
    return ServierFailure("Unexpected Error ,Please try later");
    default:
      return ServierFailure("Oops there was an error  ,please try again");
 }
  }
 factory ServierFailure.fromResponse(int? statusCode , dynamic responce){
 if(statusCode == 400 || statusCode == 401 || statusCode == 403){
   return ServierFailure(responce["error"]["message"]);
 }
 else if(statusCode == 404){
   return ServierFailure("Your request not found ,please try again");
 }
 else if(statusCode == 500){
   return ServierFailure("Internal server error  ,please try again");
 }
 else{
   return ServierFailure("Oops there was an error  ,please try again");
 }
 }
}