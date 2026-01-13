import 'package:chat_pot/features/chat/presentation/widgets/chat_screen_body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static dynamic route() =>
      MaterialPageRoute(builder: (context) => const ChatScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ChatScreenBody()));
  }
}
