import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/shared/api/api_consts.dart';
import 'package:dio/dio.dart';
import 'package:clusta/modules/shared/api/interceptors/auth_interceptor.dart';
import 'package:clusta/modules/shared/api/interceptors/logging_interceptor.dart';
import 'package:clusta/modules/shared/api/interceptors/error_interceptor.dart';

abstract final class ApiCalls {
  static final Dio dio =
      Dio(
          BaseOptions(
            baseUrl: ApiConsts.baseUrl,
            // baseUrl: "${ApiConsts.devBaseUrl}/api/v1",
            receiveTimeout: const Duration(seconds: 60),
            connectTimeout: const Duration(seconds: 30),
            sendTimeout: const Duration(seconds: 30),
          ),
        )
        ..interceptors.addAll([
          AuthInterceptor(),
          LoggingInterceptor(),
          ErrorInterceptor(),
        ]);

  static Future<List<ThreadModel>> getAllThreads() async {
    final response = await dio.post(
      ApiConsts.threadSearch,
      data: {
        "status": "idle",
        "limit": 100,
        "offset": 0,
        "sort_by": "updated_at",
        "sort_order": "desc",
        "select": [
          "thread_id",
          "created_at",
          "updated_at",
          "metadata",
          "status",
        ],
      },
    );
    try {
      List<ThreadModel> threads = (response.data as List)
          .map((e) => ThreadModel.fromJson(e))
          .toList();
      return threads;
    } catch (e) {
      print("Error parsing threads: $e");
      return [];
    }
  }

  static Future<ThreadModel> createThread() async {
    final response = await dio.post(
      ApiConsts.threads,
      data: {
        "graph_id": ApiConsts.graphId,
        "if_exists": "raise",
        "metadata": {"title": "Untitled"},
      },
    );
    ThreadModel thread = ThreadModel.fromJson(response.data);
    return thread;
  }

  static Future<void> deleteThread(String threadId) async {
    await dio.delete("${ApiConsts.threads}/$threadId");
  }

  static Future<ThreadModel?> updateThread({
    required String threadId,
    required Map<String, dynamic> metadata,
  }) async {
    final response = await dio.patch(
      "${ApiConsts.threads}/$threadId",
      data: {"metadata": metadata},
    );
    try {
      ThreadModel thread = ThreadModel.fromJson(response.data);
      return thread;
    } catch (e) {
      print("Error updating thread: $e");
      return null;
    }
  }

  static Future<ThreadModel?> getThreadById(String id) async {
    final response = await dio.get("${ApiConsts.threads}/$id");
    ThreadModel thread = ThreadModel.fromJson(response.data);
    return thread;
  }

  static Future<Response<ResponseBody>> sendMessageToThread(
    String threadId,
    String message,
  ) async {
    return await dio.post<ResponseBody>(
      '/threads/$threadId/runs/stream',
      data: {
        "assistant_id": ApiConsts.graphId,
        "input": {
          "messages": [
            {"role": "user", "content": message},
          ],
        },
        "stream_mode": ["messages"], // Only listen to message tokens
      },
      options: Options(responseType: ResponseType.stream),
    );
  }
}
