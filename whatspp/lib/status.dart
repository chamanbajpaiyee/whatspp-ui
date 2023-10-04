import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  // Add explicit type String.
  final String images;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  StatusScreen({
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 10, right: 7),
          leading: CircleAvatar(backgroundImage: AssetImage(images)),
          title: const Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Tap To View'),
        ),
        Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.all(13),
          child: const Row(
            children: [Text('Recent updates')],
          ),
        ),
        const ListTile(
          leading: SizedBox(
              width: 50,
              height: 100,
              child:
                  CircleAvatar(backgroundImage: AssetImage('images/bhai.JPG'))),
          title: Text('Bhai Ka Update'),
          subtitle: Text('31 minutes ago'),
        ),
        const ListTile(
          leading: SizedBox(
              width: 50,
              height: 100,
              child:
                  CircleAvatar(backgroundImage: AssetImage('images/masi.JPG'))),
          title: Text('Masi Ka Update'),
          subtitle: Text('1 hour ago'),
        ),
        const Divider(),
      ],
    );
  }
}
