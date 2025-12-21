import 'package:dio/dio.dart';
import 'package:hungry/core/utils/pref_helper.dart';
class DioCliect{
  final Dio _dio=Dio(

    BaseOptions(
      baseUrl: 'https://sonic-zdi0.onrender.com/api',
      headers:{"Content-Type":'application/json'},

    )
  );



DioCliect (){
  _dio.interceptors.add(
InterceptorsWrapper(
  onRequest: (options,handler)async{
final token =await PrefHelper.getToken();

if(token !=null && token.isNotEmpty){
  options.headers["Authorization"]='Bearer $token';
}
return handler.next(options);
  }
),

  );


}


Dio get dio => _dio;
 }
