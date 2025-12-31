import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    developer.log(
      'REQUEST[${options.method}] => PATH: ${options.path}',
      name: 'Dio',
    );
    developer.log('Headers: ${options.headers}', name: 'Dio');
    if (options.data != null) {
      developer.log('Data: ${options.data}', name: 'Dio');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    developer.log(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
      name: 'Dio',
    );
    developer.log('Data: ${response.data}', name: 'Dio');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    developer.log(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
      name: 'Dio',
      error: err.message,
    );
    if (err.response != null) {
      developer.log('Error Data: ${err.response?.data}', name: 'Dio');
    }
    handler.next(err);
  }
}
