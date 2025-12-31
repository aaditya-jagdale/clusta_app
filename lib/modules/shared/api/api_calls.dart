import 'package:clusta/modules/home/models/thread_chat_model.dart';
import 'package:clusta/modules/home/models/threads_model.dart';
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
    //     curl http://localhost:8123/threads/search \
    //   --request POST \
    //   --header 'Content-Type: application/json' \
    //   --data '{
    //   "values": {},
    //   "status": "idle",
    //   "limit": 10,
    //   "offset": 0,
    //   "sort_by": "updated_at",
    //   "sort_order": "desc",
    //   "select": [
    //     "thread_id",
    //     "created_at",
    //     "updated_at",
    //     "metadata",
    //     "status"
    //   ]
    // }'
    final response = await dio.post(
      ApiConsts.threadSearch,
      data: {
        "status": "idle",
        "limit": 10,
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

  static Future<void> createThread() async {
    //     curl --location 'http://localhost:8123/threads' \
    // --header 'Content-Type: application/json' \
    // --data '{
    //     "graph_id": "1",
    //     "if_exists": "raise"
    // }'
  }

  static Future<void> deleteThread() async {
    //   curl 'http://localhost:8123/threads/{thread_id}' \
    // --request DELETE
  }

  static Future<void> updateThread() async {
    //  curl 'http://localhost:8123/threads/{thread_id}' \
    //   --request PATCH \
    //   --header 'Content-Type: application/json' \
    //   --data '{
    //   "metadata": {},
    // }'
  }

  static Future<ThreadChatResponse?> getThreadById(String id) async {
    // curl --location 'http://localhost:8123/threads/{{thread_id}}' \
    // --header 'Content-Type: application/json'
    final response = await dio.get("${ApiConsts.threads}/$id");
    try {
      ThreadChatResponse thread = ThreadChatResponse.fromJson(response.data);
      return thread;
    } catch (e) {
      print("Error parsing thread: $e");
      return null;
    }
  }
}
