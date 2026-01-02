import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/home/screens/chat_empty_state.dart';
import 'package:clusta/modules/home/widgets/chat_bubble.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/modules/home/services/chat_service.dart';
import 'package:clusta/modules/shared/widgets/something_went_wrong_screen.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThreadChatScreen extends ConsumerStatefulWidget {
  const ThreadChatScreen({super.key});

  @override
  ConsumerState<ThreadChatScreen> createState() => _ThreadChatScreenState();
}

class _ThreadChatScreenState extends ConsumerState<ThreadChatScreen> {
  final _textController = TextEditingController();
  bool _isSending = false;

  List<ThreadMessage> _messages = [];

  Future<void> sendMessage() async {
    final message = _textController.text.trim();
    if (message.isEmpty || _isSending) return;
    final activeThread = ref.read(activeThreadProvider).value!;

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

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final activeThread = ref.read(activeThreadProvider).value;
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
      body: ref
          .watch(activeThreadProvider)
          .when(
            data: (data) {
              return Stack(
                children: [
                  // Chat List
                  Positioned.fill(
                    bottom: 50,
                    child: data?.values.messages.isEmpty ?? true
                        ? const ChatEmptyState()
                        : ListView.builder(
                            reverse: true,
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            itemCount: _messages.length,
                            itemBuilder: (context, index) {
                              final message = _messages.reversed
                                  .toList()[index];
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
