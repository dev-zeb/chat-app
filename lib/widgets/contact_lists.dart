import 'package:chat_app_ui/data/info.dart';
import 'package:chat_app_ui/screens/mobile_chat_screen.dart';
import 'package:chat_app_ui/widgets/contact_item.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.separated(
        itemCount: infoList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MobileChatScreen(
                    info: infoList[index],
                  ),
                ),
              );
            },
            child: ContactItem(
              info: infoList[index],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            color: Colors.white,
            height: 0.15,
            width: double.infinity,
          );
        },
      ),
    );
  }
}
