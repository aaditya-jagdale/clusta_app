import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/home/screens/main_screen.dart';
import 'package:clusta/modules/home/widgets/chat_bubble.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/modules/home/services/chat_service.dart';
import 'package:clusta/modules/shared/widgets/something_went_wrong_screen.dart';
import 'package:clusta/modules/shared/widgets/textfields.dart';
import 'package:clusta/modules/shared/widgets/transitions.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ThreadChatScreen extends ConsumerStatefulWidget {
  const ThreadChatScreen({super.key});

  @override
  ConsumerState<ThreadChatScreen> createState() => _ThreadChatScreenState();
}

class _ThreadChatScreenState extends ConsumerState<ThreadChatScreen> {
  final _textController = TextEditingController();
  bool _isSending = false;
  final _titleController = TextEditingController();
  bool _updatingTitle = false;
  List<ThreadMessage> _messages = [];

  Future<void> sendMessage() async {
    final message = _textController.text.trim();
    if (message.isEmpty || _isSending) return;
    final activeThread = ref.read(threadsProvider).value!.activeThread;

    _textController.clear();
    setState(() {
      _isSending = true;

      _messages.add(
        ThreadMessage(
          type: "human",
          content: message,
          id: DateTime.now().toIso8601String(),
        ),
      );

      // Add placeholder for assistant response
      _messages.add(
        const ThreadMessage(type: "ai", content: "", id: "temp-ai-response"),
      );
    });

    try {
      await for (final token in ChatService.sendMessageAndStream(
        activeThread.thread_id,
        message,
      )) {
        if (!mounted) break;

        final currentMessages = _messages;
        if (currentMessages.isEmpty) continue;

        final lastMsg = currentMessages.last;
        if (lastMsg.type == "ai") {
          final updatedLastMsg = lastMsg.copyWith(content: token);
          final updatedMessages = List<ThreadMessage>.from(currentMessages);
          updatedMessages[updatedMessages.length - 1] = updatedLastMsg;

          setState(() {
            _messages = updatedMessages;
          });
        }
      }
    } catch (e) {
      debugPrint("Error sending message: $e");
    } finally {
      if (mounted) {
        setState(() => _isSending = false);
      }
    }
  }

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
                                      .read(threadsProvider.notifier)
                                      .setActiveThread(response);
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final activeThread = ref.read(threadsProvider).value?.activeThread;
      _titleController.text = activeThread?.metadata.title ?? "";
      _messages = List<ThreadMessage>.from(activeThread?.values.messages ?? []);
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(_titleController.text.trim()),
        actions: [
          IconButton(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              moreOptionsBottomSheet(
                threadId: ref
                    .read(threadsProvider)
                    .value!
                    .activeThread
                    .thread_id,
                metadata: ref
                    .read(threadsProvider)
                    .value!
                    .activeThread
                    .metadata
                    .toJson(),
              );
            },
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: ref
          .watch(threadsProvider)
          .when(
            data: (data) {
              return Stack(
                children: [
                  // Chat List
                  Positioned.fill(
                    bottom: 50,
                    child: ListView.builder(
                      reverse: true,
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        final message = _messages.reversed.toList()[index];
                        final isUser = message.type == "human";
                        final messageText = message.plainTextContent;

                        return isUser
                            ? UserChatBubble(message: messageText)
                            : AssistantChatBubble(
                                message: messageText,
                                showCopyButton: !_isSending,
                              );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        // Relevant Questions
                        // Container(
                        //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        //   decoration: BoxDecoration(
                        //     color: Colors.red,
                        //     gradient: LinearGradient(
                        //       colors: [
                        //         Colors.black,
                        //         Colors.black,
                        //         Colors.black.withAlpha(20),
                        //       ],
                        //       begin: Alignment.bottomCenter,
                        //       end: Alignment.topCenter,
                        //     ),
                        //   ),
                        //   child: SingleChildScrollView(
                        //     scrollDirection: Axis.horizontal,
                        //     padding: const EdgeInsets.symmetric(horizontal: 10),
                        //     child: Row(
                        //       spacing: 10,
                        //       children: List.generate(
                        //         10,
                        //         (index) => Container(
                        //           padding: const EdgeInsets.symmetric(
                        //             vertical: 6,
                        //             horizontal: 10,
                        //           ),
                        //           decoration: BoxDecoration(
                        //             color: Colors.black,
                        //             border: Border.all(color: AppColors.grey),
                        //             borderRadius: BorderRadius.circular(12),
                        //             boxShadow: [
                        //               BoxShadow(
                        //                 color: Colors.black.withOpacity(0.1),
                        //                 blurRadius: 4,
                        //                 offset: const Offset(0, 2),
                        //               ),
                        //             ],
                        //           ),
                        //           child: Text("Question #$index"),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        // Textbox
                        Container(
                          padding: const EdgeInsets.fromLTRB(16, 6, 16, 16),
                          decoration: BoxDecoration(color: Colors.black),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 4, 6, 4),
                            decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: _textController,
                                    minLines: 1,
                                    maxLines: 8,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Type your message...",
                                      hintStyle: TextStyle(
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton.filled(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      _isSending
                                          ? AppColors.grey
                                          : AppColors.primary,
                                    ),
                                  ),
                                  onPressed: () {
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    if (_textController.text
                                        .trim()
                                        .isNotEmpty) {
                                      HapticFeedback.vibrate();
                                      sendMessage();
                                    }
                                  },
                                  icon: _isSending
                                      ? const CustomProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : Icon(
                                          Icons.arrow_upward,
                                          color: Colors.white,
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            error: (error, stackTrace) => SomethingWentWrongScreen(
              onRetry: () {
                Navigator.pop(context);
              },
            ),
            loading: () => const CustomProgressIndicator(),
          ),
    );
  }
}
