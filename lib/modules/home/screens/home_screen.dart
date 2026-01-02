import 'package:clusta/modules/chat/screens/chat_main_screen.dart';
import 'package:clusta/modules/home/screens/home_thread_list.dart';
import 'package:clusta/modules/home/widgets/home_empty_state.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/modules/shared/widgets/something_went_wrong_screen.dart';
import 'package:clusta/modules/shared/widgets/transitions.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _isCreatingThread = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Clusta",
              style: TextStyle(fontSize: 24, fontFamily: "InstrumentSerif"),
            ),
            Text(
              "Good evening, Alex",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ],
        ),
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          CircleAvatar(
            radius: 25,
            child: SvgPicture.asset(
              "assets/icons/avatar.svg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: GestureDetector(
          onTap: _isCreatingThread
              ? null
              : () async {
                  setState(() => _isCreatingThread = true);
                  HapticFeedback.vibrate();
                  final newThread = await ref
                      .read(threadsProvider.notifier)
                      .createThread();
                  ref.read(threadsProvider.notifier).setActiveThread(newThread);
                  rightSlideTransition(context, ChatMainScreen());
                  setState(() => _isCreatingThread = false);
                },
          child: Container(
            height: 52,
            constraints: BoxConstraints(maxWidth: 150),
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.fromLTRB(12, 0, 16, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primary,
              border: Border.all(color: AppColors.primary),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 8,
                  color: AppColors.primary.withAlpha(200),
                ),
              ],
            ),
            child: _isCreatingThread
                ? const CustomProgressIndicator(color: Colors.white)
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 6,
                    children: [const Icon(Icons.add), Text("New Project")],
                  ),
          ),
        ),
      ),
      body: ref
          .watch(threadsProvider)
          .when(
            data: (data) => data.threads.isEmpty
                ? HomeEmptyState()
                : HomeThreadList(threads: data.threads),
            loading: () => const CustomProgressIndicator(),
            error: (error, stackTrace) => SomethingWentWrongScreen(
              onRetry: () {
                ref.read(threadsProvider.notifier).getThreads();
              },
            ),
          ),
    );
  }
}
