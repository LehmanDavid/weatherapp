import 'package:dio/dio.dart';
import '../../features/weather/data/repositories/token_repository_impl.dart';

class MyInterceptor extends Interceptor {
  final TokenRepositoryImpl tokenRepositoryImpl = TokenRepositoryImpl();
  int indexOfToken = 0;

  Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: requestInterceptor,
          onResponse: responseInterceptor,
          onError: errorInterceptor,
        ),
      );
  }

  void responseInterceptor(Response response,
      ResponseInterceptorHandler responseInterceptorHandler) {
    responseInterceptorHandler.next(response);
  }

  void errorInterceptor(DioError error, ErrorInterceptorHandler err) async {
    var updateId = '';
    var listOfTokens = await tokenRepositoryImpl.getValidTokens();
    if (listOfTokens.isNotEmpty) {
      updateId = listOfTokens[indexOfToken].id;
    } else {
      err.reject(error);
    }
    if (error.response?.statusCode == 401) {
      await tokenRepositoryImpl.updateValidity(updateId);
      indexOfToken++;
    } else {
      err.next(error);
    }
  }

  void requestInterceptor(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var listOfTokens = await tokenRepositoryImpl.getValidTokens();
    var validToken = '';
    if (listOfTokens.isNotEmpty) {
      validToken = listOfTokens[indexOfToken].token;
    } else {
      handler.next(options);
    }
    var newOptions = Map<String, dynamic>.from(options.queryParameters);
    newOptions['key'] = validToken;
    handler.next(options.copyWith(queryParameters: newOptions));
  }
}
