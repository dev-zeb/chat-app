import 'package:chat_app_ui/responsive/responsive.dart';
import 'package:chat_app_ui/screens/mobile_screen_layout.dart';
import 'package:chat_app_ui/screens/web_screen_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App UI',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
