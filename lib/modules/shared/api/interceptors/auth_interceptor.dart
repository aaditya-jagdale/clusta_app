import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final token = await user.getIdToken();
        options.headers['Authorization'] = 'Bearer $token';
      }
    } catch (e) {
      // If token retrieval fails, we might still want to proceed
      // or we could reject the request depending on requirements.
      // For now, let's proceed without the token and let the server handle 401.
      print('Error getting auth token: $e');
    }
    handler.next(options);
  }
}
