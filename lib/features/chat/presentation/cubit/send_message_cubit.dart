import 'package:chat_pot/core/errors/server_exception.dart';
import 'package:chat_pot/features/chat/data/data_source/chat_service.dart';
import 'package:chat_pot/features/chat/data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit(this.chatService) : super(SendMessageInitial());
  final ChatService chatService;

  Future<void> sendMessage({required List<MessageModel> messages}) async {
    emit(SendMessageLoading());

    try {
      final result = await chatService.sendMessage(messages: messages);
      emit(SendMessageSuccess(messages: result));
    } on ServerException catch (e) {
      emit(SendMessageFailure(errorMessage: e.errorMessage));
    } catch (e) {
      emit(SendMessageFailure(errorMessage: e.toString()));
    }
  }
}
