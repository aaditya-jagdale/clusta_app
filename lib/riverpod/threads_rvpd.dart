import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/shared/api/api_calls.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThreadProviderModel {
  final List<ThreadModel> threads;
  final ThreadModel activeThread;
  ThreadProviderModel({required this.threads, required this.activeThread});

  ThreadProviderModel copyWith({
    List<ThreadModel>? threads,
    ThreadModel? activeThread,
  }) {
    return ThreadProviderModel(
      threads: threads ?? this.threads,
      activeThread: activeThread ?? this.activeThread,
    );
  }
}

final threadsProvider =
    AsyncNotifierProvider<ThreadsProvider, ThreadProviderModel>(
      () => ThreadsProvider(),
    );

class ThreadsProvider extends AsyncNotifier<ThreadProviderModel> {
  @override
  ThreadProviderModel build() {
    return ThreadProviderModel(threads: [], activeThread: ThreadModel());
  }

  Future<ThreadModel> createThread() async {
    final newThread = await ApiCalls.createThread();
    state = AsyncValue.data(
      state.value!.copyWith(threads: [newThread, ...state.value!.threads]),
    );
    return newThread;
  }

  Future<void> getThreads({bool loadingState = true}) async {
    if (loadingState) state = AsyncValue.loading();
    try {
      final threads = await ApiCalls.getAllThreads();

      state = AsyncValue.data(
        state.value!.copyWith(threads: threads, activeThread: threads.first),
      );
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
      state.value!.copyWith(
        threads: state.value!.threads
            .where((thread) => thread.thread_id != threadId)
            .toList(),
      ),
    );
  }

  Future<void> getThreadById(String threadId) async {
    state = AsyncValue.loading();
    try {
      final thread = await ApiCalls.getThreadById(threadId);
      state = AsyncValue.data(state.value!.copyWith(activeThread: thread));
    } on DioException catch (e, s) {
      state = AsyncValue.error(e.response?.data, s);
    }
  }

  void setActiveThread(ThreadModel thread) {
    state = AsyncValue.data(state.value!.copyWith(activeThread: thread));
  }

  void setThreadModelById(ThreadModel threadModel) {
    final threadIndex = state.value!.threads.indexWhere(
      (thread) => thread.thread_id == threadModel.thread_id,
    );

    if (threadIndex == -1) return;
    state.value!.threads[threadIndex] = threadModel;
    state = AsyncValue.data(
      state.value!.copyWith(threads: state.value!.threads),
    );
  }
}
