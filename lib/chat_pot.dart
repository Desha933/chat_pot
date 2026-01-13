import 'package:chat_pot/core/networking/api_service.dart';
import 'package:chat_pot/features/chat/data/data_source/chat_service.dart';
import 'package:chat_pot/features/chat/presentation/cubit/send_message_cubit.dart';
import 'package:chat_pot/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => SendMessageCubit(ChatService(ApiService())),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,

            home: const OnBoardingScreen(),
          ),
        );
      },
    );
  }
}
