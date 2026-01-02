import 'package:clusta/modules/shared/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UserChatBubble extends StatelessWidget {
  final String message;
  const UserChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 8, 0, 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        child: SelectableText(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}

class AssistantChatBubble extends StatelessWidget {
  final String message;
  final bool showCopyButton;
  const AssistantChatBubble({
    super.key,
    required this.message,
    this.showCopyButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(16),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GptMarkdown(
              message,

              style: const TextStyle(
                color: AppColors.white,
                fontSize: 15,
                height: 1.4,
              ),
              onLinkTap: (url, title) {
                HapticFeedback.vibrate();
                launchUrlString(url);
              },
            ),
            const SizedBox(height: 10),
            if (showCopyButton)
              IconButton(
                icon: const Icon(Icons.copy, size: 18),
                onPressed: () {
                  HapticFeedback.vibrate();
                  Clipboard.setData(ClipboardData(text: message));
                },
              ),
          ],
        ),
      ),
    );
  }
}
