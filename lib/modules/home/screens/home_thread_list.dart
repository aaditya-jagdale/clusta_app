import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/home/widgets/thread_tile.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeThreadList extends ConsumerStatefulWidget {
  final List<ThreadModel> threads;
  const HomeThreadList({super.key, required this.threads});

  @override
  ConsumerState<HomeThreadList> createState() => _HomeThreadListState();
}

class _HomeThreadListState extends ConsumerState<HomeThreadList> {
  bool _refresh = false;

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
              Animate(
                target: _refresh ? 1 : 0,
                onComplete: (controller) => controller.reset(),
                effects: [RotateEffect(duration: 500.ms)],
                child: IconButton(
                  onPressed: () async {
                    HapticFeedback.vibrate();
                    setState(() => _refresh = true);
                    ref
                        .read(threadsProvider.notifier)
                        .getThreads(loadingState: false);
                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        _refresh = false;
                      });
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/refresh.svg",
                    height: 16,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
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
