import 'package:chat_app_ui/data/colors.dart';
import 'package:flutter/material.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.06,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.white),
      )),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          filled: true,
          fillColor: ColorList.searchBarColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'Search or start a new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
