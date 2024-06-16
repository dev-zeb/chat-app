import 'package:chat_app_ui/data/colors.dart';
import 'package:chat_app_ui/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  final info;

  const MobileChatScreen({super.key, this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorList.appBarColor,
        title: Text(info['name'].toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(

            ),
          )
        ],
      ),
    );
  }
}
