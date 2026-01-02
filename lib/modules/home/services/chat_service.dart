import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:clusta/modules/shared/api/api_calls.dart';

class ChatService {
  static Stream<String> sendMessageAndStream(
    String threadId,
    String message,
  ) async* {
    try {
      final response = await ApiCalls.sendMessageToThread(threadId, message);
      final stream = response.data!.stream
          .cast<List<int>>()
          .transform(utf8.decoder)
          .transform(const LineSplitter());

      String? currentEvent;

      await for (final line in stream) {
        if (line.startsWith('event: ')) {
          currentEvent = line.substring(7).trim();
          continue;
        }

        if (!line.startsWith('data: ')) continue;

        final jsonString = line.substring(6);
        if (jsonString.trim() == '[DONE]') break;

        try {
          final chunk = json.decode(jsonString);

          if (currentEvent == 'messages/partial') {
            if (chunk is List) {
              for (var msg in chunk) {
                if (msg is Map &&
                    msg['id']?.startsWith('do-not-render-') == true) {
                  continue;
                }

                if (msg is Map && msg['type'] == 'ai') {
                  final String? content = msg['content'];
                  if (content != null) {
                    yield content;
                  }
                }
              }
            }
          }
          // We can add more event handlers here if needed (e.g., metadata, tool calls)
        } catch (e) {
          debugPrint("Error parsing chunk: $e");
          continue;
        }
      }
    } catch (e) {
      debugPrint("Error in sendMessageAndStream: $e");
      rethrow;
    }
  }
}
