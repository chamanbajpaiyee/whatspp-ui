import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String images; // Change the type to String for image path.
  final String title; // Add explicit type String.
  final String msg; // Add explicit type String.

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ChatScreen({required this.images, required this.title, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images)),
          title: Text(title),
          subtitle: Text(msg),
          trailing: Column(children: [
            const Text('12:00'),
            SizedBox(
              width: 24,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColorLight,
                child: const Text(
                  '7',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]),
        ),
        const Divider(),
      ],
    );
  }
}
