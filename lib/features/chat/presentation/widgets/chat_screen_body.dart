import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/features/chat/data/models/message_model.dart';
import 'package:chat_pot/features/chat/presentation/cubit/send_message_cubit.dart';
import 'package:chat_pot/features/chat/presentation/widgets/chat_list_view.dart';
import 'package:chat_pot/features/chat/presentation/widgets/custom_app_bar.dart';
import 'package:chat_pot/features/chat/presentation/widgets/custom_text_form_field.dart';
import 'package:chat_pot/features/chat/presentation/widgets/message_bubble_failure.dart';
import 'package:chat_pot/features/chat/presentation/widgets/message_bubble_loading.dart';
import 'package:chat_pot/features/chat/presentation/widgets/start_conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreenBody extends StatefulWidget {
  const ChatScreenBody({super.key});

  @override
  State<ChatScreenBody> createState() => _ChatScreenBodyState();
}

class _ChatScreenBodyState extends State<ChatScreenBody> {
  List<MessageModel> messages = [];
  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendMessageCubit, SendMessageState>(
      listener: (context, state) {
        if (state is SendMessageFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: Duration(seconds: 10),
              content: Text(state.errorMessage),
            ),
          );
        }
        if (state is SendMessageSuccess) {
          messages.add(state.messages.last);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            CustomAppBar(),
            Divider(thickness: 1, color: Color(0XFFECECEC)),

            if (state is SendMessageInitial || messages.isEmpty)
              Expanded(child: SingleChildScrollView(child: StartConversation()))
            else
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: ChatListView(messages: messages)),
                    if (state is SendMessageLoading) MessageBubbleLoading(),
                    if (state is SendMessageFailure)
                      MessageBubbleFailure(
                        onTap: () => sendMessage(
                          messages.last.parts?.first.text ?? 'is null',
                          context,
                        ),
                        message: messages.last.parts?.first.text ?? 'is null',
                      ),
                  ],
                ),
              ),

            CustomTextFormField(
              controller: textController,
              onSend: (value) {
                sendMessage(value, context);
              },
              onSubmit: (value) {
                sendMessage(value, context);
              },
            ),

            verticalSpacing(39),
          ],
        );
      },
    );
  }

  void sendMessage(String value, BuildContext context) {
    if (value != null) {
      messages.add(
        MessageModel(
          parts: [MessagePart(text: value)],
          role: "user",
        ),
      );

      context.read<SendMessageCubit>().sendMessage(messages: messages);
      textController.clear();
    }
  }
}
