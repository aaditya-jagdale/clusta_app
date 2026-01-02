import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/home/widgets/thread_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeThreadList extends ConsumerStatefulWidget {
  final List<ThreadModel> threads;
  const HomeThreadList({super.key, required this.threads});

  @override
  ConsumerState<HomeThreadList> createState() => _HomeThreadListState();
}

class _HomeThreadListState extends ConsumerState<HomeThreadList> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("RECENT NOTEBOOKS"),
              TextButton(onPressed: () {}, child: Text("View all")),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: widget.threads.length,
            itemBuilder: (context, index) {
              final thread = widget.threads[index];
              return ThreadTile(thread: thread);
            },
          ),
        ),
      ],
    );
  }
}
