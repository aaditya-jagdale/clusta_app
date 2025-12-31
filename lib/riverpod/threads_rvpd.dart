import 'package:clusta/modules/home/models/threads_model.dart';
import 'package:clusta/modules/shared/api/api_calls.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThreadProviderModel {
  final List<ThreadModel> threads;
  final ThreadModel threadDetails;
  final int threadCount;
  ThreadProviderModel({
    required this.threads,
    required this.threadDetails,
    required this.threadCount,
  });

  ThreadProviderModel copyWith({
    List<ThreadModel>? threads,
    ThreadModel? threadDetails,
    int? threadCount,
  }) {
    return ThreadProviderModel(
      threads: threads ?? this.threads,
      threadDetails: threadDetails ?? this.threadDetails,
      threadCount: threadCount ?? this.threadCount,
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
    return ThreadProviderModel(
      threads: [],
      threadDetails: ThreadModel(),
      threadCount: 0,
    );
  }

  Future<void> getThreads() async {
    state = AsyncValue.loading();
    final threads = await ApiCalls.getAllThreads();

    state = AsyncValue.data(
      ThreadProviderModel(
        threads: threads,
        threadDetails: ThreadModel(),
        threadCount: 0,
      ),
    );
  }
}
