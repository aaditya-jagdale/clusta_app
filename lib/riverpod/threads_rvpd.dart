import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/shared/api/api_calls.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final threadsProvider =
    AsyncNotifierProvider<ThreadsProvider, List<ThreadModel>>(
      () => ThreadsProvider(),
    );

class ThreadsProvider extends AsyncNotifier<List<ThreadModel>> {
  @override
  List<ThreadModel> build() {
    return [];
  }

  Future<ThreadModel> createThread() async {
    final newThread = await ApiCalls.createThread();
    state = AsyncValue.data([newThread, ...state.value!]);
    return newThread;
  }

  Future<void> getThreads({bool loadingState = true}) async {
    if (loadingState) state = AsyncValue.loading();
    try {
      final threads = await ApiCalls.getAllThreads();

      state = AsyncValue.data(threads);
    } on DioException catch (e, s) {
      state = AsyncValue.error(e.response?.data, s);
    }
  }

  Future<ThreadModel?> updateThread({
    required String threadID,
    required Map<String, dynamic> metadata,
  }) async {
    final response = await ApiCalls.updateThread(
      threadId: threadID,
      metadata: metadata,
    );
    if (response == null) return null;
    return response;
  }

  Future<void> deleteThread(String threadId) async {
    await ApiCalls.deleteThread(threadId);
    state = AsyncValue.data(
      state.value!.where((thread) => thread.thread_id != threadId).toList(),
    );
  }

  void setThreadModelById(ThreadModel threadModel) {
    final threadIndex = state.value!.indexWhere(
      (thread) => thread.thread_id == threadModel.thread_id,
    );

    if (threadIndex == -1) return;
    state.value![threadIndex] = threadModel;
    state = AsyncValue.data(state.value!);
  }
}

final activeThreadProvider =
    AsyncNotifierProvider<ActiveThreadProvider, ThreadModel?>(
      () => ActiveThreadProvider(),
    );

class ActiveThreadProvider extends AsyncNotifier<ThreadModel?> {
  @override
  ThreadModel? build() {
    return null;
  }

  Future<void> getThreadById(String threadId) async {
    state = AsyncValue.loading();
    try {
      final thread = await ApiCalls.getThreadById(threadId);
      if (thread == null) return;
      state = AsyncValue.data(thread);
    } on DioException catch (e, s) {
      state = AsyncValue.error(e.response?.data, s);
    }
  }
}
