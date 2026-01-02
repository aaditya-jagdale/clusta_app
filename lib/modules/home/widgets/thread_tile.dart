import 'package:clusta/modules/chat/screens/chat_main_screen.dart';
import 'package:clusta/modules/home/models/thread_model.dart';
import 'package:clusta/modules/chat/screens/thread_chat_screen.dart';
import 'package:clusta/modules/shared/services/date_service.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/custom_progress_indicator.dart';
import 'package:clusta/modules/shared/widgets/textfields.dart';
import 'package:clusta/modules/shared/widgets/transitions.dart';
import 'package:clusta/riverpod/threads_rvpd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThreadTile extends ConsumerStatefulWidget {
  final ThreadModel thread;
  const ThreadTile({super.key, required this.thread});

  @override
  ConsumerState<ThreadTile> createState() => _ThreadTileState();
}

class _ThreadTileState extends ConsumerState<ThreadTile> {
  final _titleController = TextEditingController();
  bool _updatingTitle = false;

  void renameProjectBottomSheet(ThreadModel thread) {
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
                              Map<String, dynamic> currentMetadata = thread
                                  .metadata
                                  .toJson();
                              currentMetadata["title"] = _titleController.text
                                  .trim();
                              await ref
                                  .read(threadsProvider.notifier)
                                  .updateThread(
                                    threadID: thread.thread_id,
                                    metadata: currentMetadata,
                                  );
                              ref
                                  .read(threadsProvider.notifier)
                                  .getThreads(loadingState: false);
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

  void moreOptionsBottomSheet(ThreadModel thread) {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: SvgPicture.asset("assets/icons/pen.svg"),
              title: const Text("Rename Project"),
              onTap: () {
                HapticFeedback.vibrate();
                Navigator.pop(context);
                renameProjectBottomSheet(thread);
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
                await ref
                    .read(threadsProvider.notifier)
                    .deleteThread(thread.thread_id);
                ref.read(threadsProvider.notifier).getThreads();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Map relevantIcon = {
      "documents": "assets/icons/documents.svg",
      "links": "assets/icons/link.svg",
    };

    return GestureDetector(
      onTap: () {
        HapticFeedback.vibrate();
        ref.read(threadsProvider.notifier).setActiveThread(widget.thread);
        rightSlideTransition(context, const ChatMainScreen());
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.thread.metadata.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Last edited ${formatDate(date: widget.thread.updated_at, format: "dd MMM yyyy")} · ${widget.thread.metadata.sources} sources",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      moreOptionsBottomSheet(widget.thread);
                    },
                    icon: Icon(Icons.more_vert_rounded),
                  ),
                ],
              ),
            ),
            if (widget.thread.metadata.source_details.documents > 0 ||
                widget.thread.metadata.source_details.links > 0)
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Row(
                  spacing: 4,

                  children: [
                    if (widget.thread.metadata.source_details.documents > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF2E3542),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          spacing: 4,
                          children: [
                            SvgPicture.asset(
                              relevantIcon["documents"]!,
                              height: 12,
                              fit: BoxFit.fitHeight,
                              colorFilter: ColorFilter.mode(
                                AppColors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "${widget.thread.metadata.source_details.documents} documents",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (widget.thread.metadata.source_details.documents > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF2E3542),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          spacing: 4,
                          children: [
                            SvgPicture.asset(
                              relevantIcon["links"]!,
                              height: 12,
                              fit: BoxFit.fitHeight,
                              colorFilter: ColorFilter.mode(
                                Color(0xFF818CF8),
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              "${widget.thread.metadata.source_details.links} links",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
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
      ),
    );
  }
}
