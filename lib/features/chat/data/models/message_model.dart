class MessageModel {
  List<MessagePart>? parts;
  String? role;
  MessageModel({required this.parts, required this.role});
  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      role: json["role"] as String? ?? 'user',
      parts:
          (json["parts"] as List?)
              ?.map(
                (part) => MessagePart.fromJson(part as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "role": role,
      "parts": parts?.map((part) => part.toJson()).toList() ?? [],
    };
  }
}

class MessagePart {
  String? text;

  MessagePart({required this.text});

  factory MessagePart.fromJson(Map<String, dynamic> json) {
    return MessagePart(text: json["text"]);
  }
  Map<String, dynamic> toJson() {
    return {"text": text ?? ''};
  }
}

//{parts: [{text: Hello! How can I help you today?}], role: model}
