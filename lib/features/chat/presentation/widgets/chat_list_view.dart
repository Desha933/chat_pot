import 'package:chat_pot/features/chat/data/models/message_model.dart';
import 'package:chat_pot/features/chat/presentation/widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key, required this.messages});
  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        int newIndex = messages.length - (index + 1);
        final message = messages[newIndex].parts?.first.text ?? 'is null';

        final role = messages[newIndex].role ?? 'is null';

        return MessageBubble(
          message: message,
          isSender: role == 'user' || role == 'user' ? true : false,
        );
      },
    );
  }
}
