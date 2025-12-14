import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/features/home/presentation/widgets/chat_bubble.dart';
import 'package:chat_pot/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:chat_pot/features/home/presentation/widgets/custom_text_form_field.dart';
import 'package:chat_pot/features/home/presentation/widgets/wellcom_message.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Divider(thickness: 1, color: Color(0XFFECECEC)),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                WellcomMessage(),
                ChatBubble(
                  message: 'Hello chatGPT,how are you today?',
                  isSender: true,
                ),
                ChatBubble(
                  message: 'Hello,i’m fine,how can i help you?',
                  isSender: false,
                ),
              ],
            ),
          ),
        ),

        CustomTextFormField(),

        verticalSpacing(39),
      ],
    );
  }
}
