import 'package:chat_app_ui/data/info.dart';
import 'package:chat_app_ui/widgets/message_card.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
          isMe: messages[index]['isMe'] as bool,
        );
      },
    );
  }
}
