import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';

class MyInterceptor extends Interceptor {
  FirebaseFirestore tokenInstance = FirebaseFirestore.instance;
  Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.add(InterceptorsWrapper(
          onRequest: requestInterceptor,
          onResponse: responseInterceptor,
          onError: errorInterceptor));
  }

  void responseInterceptor(Response response,
      ResponseInterceptorHandler responseInterceptorHandler) {
    responseInterceptorHandler.next(response);
  }

  void errorInterceptor(DioError error, ErrorInterceptorHandler err) async {
    err.next(error);
    if (error.response?.statusCode == 401) {
      await getData();
    } else {}
  }

  Future<void> getData() async {
    QuerySnapshot querySnapshot =
        await tokenInstance.collection('tokens').get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    print(allData);
  }

  void requestInterceptor(
      RequestOptions options, RequestInterceptorHandler handler) {
    String key = '6bd5a41f756d4100b3365659221306';
    try {
      var newOptions = Map<String, dynamic>.from(options.queryParameters);
      newOptions['key'] = key;
      handler.next(options.copyWith(queryParameters: newOptions));
    } catch (e, stacktrace) {
      print("$e  and $stacktrace");
    }
  }
}
