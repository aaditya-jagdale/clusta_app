import 'package:clusta/modules/home/models/thread_chat_model.dart';
import 'package:clusta/modules/home/models/threads_model.dart';
import 'package:clusta/modules/home/widgets/chat_bubble.dart';
import 'package:clusta/modules/shared/api/api_calls.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThreadChatScreen extends ConsumerStatefulWidget {
  final ThreadModel thread;
  const ThreadChatScreen({super.key, required this.thread});

  @override
  ConsumerState<ThreadChatScreen> createState() => _ThreadChatScreenState();
}

class _ThreadChatScreenState extends ConsumerState<ThreadChatScreen> {
  ThreadChatResponse? threadChatResponse;
  final _textController = TextEditingController();

  Future<void> getThreadChat() async {
    threadChatResponse = await ApiCalls.getThreadById(widget.thread.thread_id);
    setState(() {});
  }

  @override
  void initState() {
    getThreadChat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.thread.metadata.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: threadChatResponse == null
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                // Chat List
                Positioned.fill(
                  child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                    itemCount: threadChatResponse!.values.messages.length,
                    itemBuilder: (context, index) {
                      final message =
                          threadChatResponse!.values.messages[index];
                      final isUser = message.type == "human";

                      String messageText = "";
                      if (message.content is String) {
                        messageText = message.content as String;
                      } else if (message.content is List &&
                          (message.content as List).isNotEmpty) {
                        final first = (message.content as List).first;
                        if (first is Map && first.containsKey('text')) {
                          messageText = first['text'] ?? "";
                        } else {
                          messageText = message.content.toString();
                        }
                      } else {
                        messageText = message.content?.toString() ?? "";
                      }

                      return isUser
                          ? UserChatBubble(message: messageText)
                          : AssistantChatBubble(message: messageText);
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type your message...",
                                    hintStyle: TextStyle(color: AppColors.grey),
                                  ),
                                ),
                              ),
                              IconButton.filled(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    AppColors.primary,
                                  ),
                                ),
                                onPressed: () {
                                  if (_textController.text.trim().isNotEmpty) {
                                    HapticFeedback.vibrate();
                                  }
                                },
                                icon: Icon(
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
            ),
    );
  }
}
