import 'package:clusta/modules/chat/screens/thread_chat_screen.dart';
import 'package:clusta/modules/home/screens/chat_sources.dart';
import 'package:clusta/modules/home/screens/main_screen.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/modules/shared/widgets/something_went_wrong_screen.dart';
import 'package:clusta/modules/shared/widgets/textfields.dart';
import 'package:clusta/modules/shared/widgets/transitions.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatMainScreen extends ConsumerStatefulWidget {
  final String threadId;
  const ChatMainScreen({super.key, required this.threadId});

  @override
  ConsumerState<ChatMainScreen> createState() => _ChatMainScreenState();
}

class _ChatMainScreenState extends ConsumerState<ChatMainScreen> {
  List<Widget> chatScreens = [
    const ChatSourcesScreen(),
    const ThreadChatScreen(),
  ];

  final _titleController = TextEditingController();
  bool _updatingTitle = false;

  void renameProjectBottomSheet({
    required String threadId,
    required Map<String, dynamic> metadata,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                16,
                16,
                16,
                MediaQuery.of(context).viewInsets.bottom + 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Rename Project",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    autofocus: true,
                    title: '',
                    hint: "Untitled",
                    controller: _titleController,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.maxFinite, 50),
                      backgroundColor: AppColors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: _updatingTitle
                        ? null
                        : () async {
                            setState(() => _updatingTitle = true);
                            try {
                              Map<String, dynamic> currentMetadata = metadata;
                              currentMetadata["title"] = _titleController.text
                                  .trim();
                              final response = await ref
                                  .read(threadsProvider.notifier)
                                  .updateThread(
                                    threadID: threadId,
                                    metadata: currentMetadata,
                                  );
                              if (response != null) {
                                setState(() {
                                  ref
                                      .read(activeThreadProvider.notifier)
                                      .getThreadById(response.thread_id);
                                });
                              }
                              Navigator.pop(context);
                            } catch (e) {
                              return;
                            } finally {
                              setState(() => _updatingTitle = false);
                            }
                          },
                    child: _updatingTitle
                        ? const CustomProgressIndicator()
                        : const Text("Rename"),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void moreOptionsBottomSheet({
    required String threadId,
    required Map<String, dynamic> metadata,
  }) {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      barrierColor: Colors.black.withAlpha(200),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ListTile(
            //   leading: SvgPicture.asset(
            //     "assets/icons/brain.svg",
            //     colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            //   ),
            //   title: const Text("Model"),
            //   onTap: () {
            //     HapticFeedback.vibrate();
            //   },
            // ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/pen.svg"),
              title: const Text("Rename Project"),
              onTap: () {
                HapticFeedback.vibrate();
                Navigator.pop(context);
                renameProjectBottomSheet(
                  threadId: threadId,
                  metadata: metadata,
                );
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/chat_clear.svg"),
              title: const Text("Clear Chat History"),
              onTap: () {
                HapticFeedback.vibrate();

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.delete_outline_rounded, color: Colors.red),
              title: const Text(
                "Delete Project",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () async {
                HapticFeedback.vibrate();
                await ref.read(threadsProvider.notifier).deleteThread(threadId);
                clearAllAndPush(context, const MainScreen());
              },
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(activeThreadProvider.notifier)
          .getThreadById(widget.threadId);
      _titleController.text =
          ref.read(activeThreadProvider).value?.metadata.title ?? "";
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleController.text.trim()),
        actions: [
          IconButton(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              moreOptionsBottomSheet(
                threadId: ref.read(activeThreadProvider).value!.thread_id,
                metadata: ref
                    .read(activeThreadProvider)
                    .value!
                    .metadata
                    .toJson(),
              );
            },
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),

      body: ref
          .watch(activeThreadProvider)
          .when(
            data: (data) {
              return DefaultTabController(
                length: chatScreens.length,
                initialIndex: 1,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 0,
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withAlpha(25),
                        ),
                        splashFactory: NoSplash.splashFactory,
                        indicatorSize: TabBarIndicatorSize.tab,
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

                    Expanded(child: TabBarView(children: chatScreens)),
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
