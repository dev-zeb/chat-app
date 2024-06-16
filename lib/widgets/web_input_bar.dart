import 'package:chat_app_ui/data/colors.dart';
import 'package:flutter/material.dart';

class WebInputBar extends StatelessWidget {
  const WebInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: ColorList.dividerColor,
          )),
          color: ColorList.chatBarMessage),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 15,
              ),
              child: TextField(
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                filled: true,
                fillColor: ColorList.searchBarColor,
                hintStyle: const TextStyle(fontSize: 14),
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
