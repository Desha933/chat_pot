import 'package:chat_pot/core/errors/server_exception.dart';
import 'package:chat_pot/core/networking/api_service.dart';
import 'package:chat_pot/features/chat/data/models/message_model.dart';
import 'package:dio/dio.dart';

class ChatService {
  final ApiService apiService;
  ChatService(this.apiService);
  List<MessageModel> messageList =[ ];
  Future<List<MessageModel>> sendMessage({
    required List<MessageModel> messages,
  }) async {
    try {
      final response = await apiService.post(
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent',
        data: {
          "contents": messages.map((message) => message.toJson()).toList(),
        },
        headers: {
          "Content-Type": 'application/json',
          "x-goog-api-key": "AIzaSyDJqkPep-0-Z_lXPchAf0GPQ4xE8JRHf0g",
        },
      );

      messageList.add(
        MessageModel.fromJson(response.data["candidates"][0]["content"]),
      );

      return messageList;
    } on DioException catch (e) {
      throw ServerException(
        errorMessage:
            e.response?.data["error"]["message"] ?? "some went wrong ....",
      );
    } on Exception catch (e) {
      throw ServerException(errorMessage: 'some thing wrong');
    }
  }
}
