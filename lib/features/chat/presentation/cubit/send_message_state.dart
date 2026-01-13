part of 'send_message_cubit.dart';

@immutable
sealed class SendMessageState {}

final class SendMessageInitial extends SendMessageState {}

final class SendMessageLoading extends SendMessageState {}

final class SendMessageSuccess extends SendMessageState {
  final List<MessageModel> messages;

  SendMessageSuccess({required this.messages});
}

final class SendMessageFailure extends SendMessageState {
  final String errorMessage;

  SendMessageFailure({required this.errorMessage});
}
