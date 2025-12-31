import 'package:clusta/modules/home/models/threads_model.dart';
import 'package:clusta/modules/home/screens/thread_chat_screen.dart';
import 'package:clusta/modules/shared/services/date_service.dart';
import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:clusta/modules/shared/widgets/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThreadTile extends StatelessWidget {
  final ThreadModel thread;
  const ThreadTile({super.key, required this.thread});

  @override
  Widget build(BuildContext context) {
    final Map relevantIcon = {
      "documents": "assets/icons/documents.svg",
      "links": "assets/icons/link.svg",
    };

    return GestureDetector(
      onTap: () {
        HapticFeedback.vibrate();
        rightSlideTransition(context, ThreadChatScreen(thread: thread));
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
                          thread.metadata.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "${formatDate(date: thread.updated_at)} · ${thread.metadata.sources} sources",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded),
                  ),
                ],
              ),
            ),
            if (thread.metadata.source_details.isNotEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Row(
                  spacing: 4,

                  children: List.generate(
                    thread.metadata.source_details.length,
                    (index) {
                      final key =
                          thread.metadata.source_details[index].keys.first;
                      final value =
                          thread.metadata.source_details[index].values.first;
                      return Container(
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
                            if (relevantIcon.containsKey(key))
                              SvgPicture.asset(
                                relevantIcon[key]!,
                                height: 12,
                                fit: BoxFit.fitHeight,
                                colorFilter: ColorFilter.mode(
                                  AppColors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            Text(
                              "$value $key",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
