import 'package:dio/dio.dart';
import 'package:hungry/network/api_error.dart';

class ApiExceptions{

  static ApiError handleError(DioError error){

    switch(error.type){
      case DioErrorType.connectionTimeout :
        return ApiError(message: "Bad Connection");
      case DioErrorType.badResponse :
        return ApiError(message: error.toString());

default:
  return  ApiError(message: "something Went Wrong");
    }

  }


}