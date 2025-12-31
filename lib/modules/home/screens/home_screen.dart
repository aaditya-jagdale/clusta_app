import 'package:clusta/modules/home/screens/home_thread_list.dart';
import 'package:clusta/modules/home/widgets/home_empty_state.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
      body: ref
          .watch(threadsProvider)
          .when(
            data: (data) => data.threads.isEmpty
                ? HomeEmptyState()
                : HomeThreadList(threads: data.threads),
            loading: () => const CustomProgressIndicator(),
            error: (error, stackTrace) => Center(child: Text(error.toString())),
          ),
    );
  }
}
