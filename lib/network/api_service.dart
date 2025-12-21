import 'package:dio/dio.dart';
import 'package:hungry/network/api_error.dart';
import 'package:hungry/network/api_excpections.dart';
import 'package:hungry/network/dio_client.dart';

class ApiService {

  final DioCliect _dioCliect=DioCliect();

  ///get
Future<dynamic>get(String endPoint)async{
try{
final response= await _dioCliect.dio.get(endPoint);
return response.data;
}on DioError catch(e){
  return ApiExceptions.handleError(e);
}
}

///post
Future<dynamic>post(String endPoint,Map<String, dynamic>body)async{
  try{
    final response= await _dioCliect.dio.post(endPoint,data: body);
    return response.data;
  }on DioError catch(e){
    return ApiExceptions.handleError(e);
  }
}

Future<dynamic>delete(String endPoint,Map<String,dynamic>body)async{
  try{
    final response=await _dioCliect.dio.delete(endPoint,data: body);
    return response.data;
  }on DioError catch(e){
    return ApiExceptions.handleError(e);
  }

}














///put
Future<dynamic>put(String endpoind,Map<String,dynamic>body)async{
  try{
    final response=await _dioCliect.dio.put(endpoind,data: body);
    return response.data;
  }on DioError catch(e){
    return ApiExceptions.handleError(e);
  }
}


}