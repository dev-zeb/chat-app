import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final Map<String, String> info;
  const ContactItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(
          info['name'].toString(),
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            info['message'].toString(),
            style: const TextStyle(fontSize: 15),
          ),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            info['profilePic'].toString(),
          ),
        ),
        trailing: Text(
          info['time'].toString(),
          style: const TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
