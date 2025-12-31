import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // We can handle global errors here, like 401 Unauthorized.
    // For now, we just pass the error through.

    // Example: Check for 401 and redirect to login if needed.
    // if (err.response?.statusCode == 401) {
    //   // handle unauthorized
    // }

    // We can also simplify the error message or wrap it in a custom exception
    // before passing it to the UI layer.

    handler.next(err);
  }
}
