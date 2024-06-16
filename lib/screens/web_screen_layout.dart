import 'package:chat_app_ui/widgets/chat_app_bar.dart';
import 'package:chat_app_ui/widgets/chat_list.dart';
import 'package:chat_app_ui/widgets/contact_lists.dart';
import 'package:chat_app_ui/widgets/web_input_bar.dart';
import 'package:chat_app_ui/widgets/web_profile_bar.dart';
import 'package:chat_app_ui/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: size.width * 0.25,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const WebProfileBar(),
                  const WebSearchBar(),
                  SizedBox(
                    height: size.height,
                    child: const ContactsList(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.75,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/backgroundImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                children: [
                  ChatAppBar(),
                  Expanded(
                    child: ChatList(),
                  ),
                  WebInputBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
