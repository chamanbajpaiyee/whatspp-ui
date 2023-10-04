import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  // Add explicit type String.
  final String images;
  final String title;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CallsScreen({required this.images, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
              contentPadding: EdgeInsets.only(left: 5, right: 17),
              leading: const SizedBox(
                  width: 50,
                  height: 100,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('images/bhai.JPG'))),
              title: const Text(
                'Bhai JI',
                style: TextStyle(color: Colors.red),
              ),
              subtitle: const Row(
                children: [
                  Icon(Icons.call_received, size: 20, color: Colors.red),
                  Text('September 18,10:46 AM'),
                ],
              ),
              trailing: Icon(
                Icons.video_call,
                size: 25,
                color: Theme.of(context).primaryColor,
              )),
          ListTile(
              contentPadding: const EdgeInsets.only(left: 5, right: 17),
              leading: const SizedBox(
                  width: 50,
                  height: 100,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('images/masi.JPG'))),
              title: const Text('Masi JI'),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  const Text('September 24,8:46 AM'),
                ],
              ),
              trailing: Icon(
                Icons.call,
                size: 25,
                color: Theme.of(context).primaryColor,
              )),
          const Divider(),
        ],
      ),
    );
  }
}
