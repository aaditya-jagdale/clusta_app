import 'package:clusta/modules/chat/screens/thread_chat_screen.dart';
import 'package:clusta/modules/home/screens/chat_sources.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/modules/shared/widgets/something_went_wrong_screen.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatMainScreen extends ConsumerStatefulWidget {
  const ChatMainScreen({super.key});

  @override
  ConsumerState<ChatMainScreen> createState() => _ChatMainScreenState();
}

class _ChatMainScreenState extends ConsumerState<ChatMainScreen> {
  List<Widget> chatScreens = [
    const ChatSourcesScreen(),
    const ThreadChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref
          .watch(threadsProvider)
          .when(
            data: (data) {
              return DefaultTabController(
                length: chatScreens.length,
                initialIndex: 1,
                child: Column(
                  children: [
                    Expanded(child: TabBarView(children: chatScreens)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withAlpha(50),
                        ),
                        splashFactory: NoSplash.splashFactory,
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 10,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/folder.svg",
                                  colorFilter: ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const Text(
                                  "Sources",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 10,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/chat.svg",
                                  colorFilter: ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const Text(
                                  "Chat",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (error, stackTrace) => SomethingWentWrongScreen(
              onRetry: () {
                ref.read(threadsProvider.notifier).getThreads();
              },
            ),
            loading: () => const CustomProgressIndicator(),
          ),
    );
  }
}
