import 'package:flutter/material.dart';
import 'package:whatspp/calls.dart';
import 'package:whatspp/chats.dart';
import 'package:whatspp/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this)
      ..addListener(
        () {
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              labelPadding: const EdgeInsets.all(12),
              controller: _tabController,
              tabs: [
                const Icon(Icons.camera_alt),
                Container(
                    width: 90,
                    alignment: Alignment.center,
                    child: const Text('CHATS')),
                Container(
                    width: 70,
                    alignment: Alignment.center,
                    child: const Text('Status')),
                Container(
                    width: 70,
                    alignment: Alignment.center,
                    child: const Text('CALLS')),
              ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const Text('CAMERA'),
            //START CHAT
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatScreen(
                      images: 'images/bha.jpg',
                      title: 'BHABHI JI',
                      msg: 'bahut bigad gye ho tum',
                    ),
                    ChatScreen(
                      images: 'images/moni.JPG',
                      title: 'Moni Di',
                      msg: 'Kahan Ho',
                    ),
                    ChatScreen(
                      images: 'images/moni.JPG',
                      title: 'Moni Di',
                      msg: 'Kahan Ho',
                    ),
                    ChatScreen(
                      images: 'images/bhai.JPG',
                      title: 'Bhai Ji',
                      msg: 'Kya Hal Hai',
                    ),
                    ChatScreen(
                      images: 'images/jija.JPG',
                      title: 'Jija Ji',
                      msg: 'kaise ho',
                    ),
                    ChatScreen(
                      images: 'images/masi.JPG',
                      title: 'MASI JI',
                      msg: 'Khush Raho',
                    ),
                    ChatScreen(
                      images: 'images/bha.jpg',
                      title: 'Bhabhi ji',
                      msg: 'khana ho gya ',
                    ),
                    ChatScreen(
                      images: 'images/bhai.JPG',
                      title: 'BHAI JI',
                      msg: 'kab aa rahe ho',
                    ),
                    ChatScreen(
                      images: 'images/moni.JPG',
                      title: 'MONI DI',
                      msg: 'aur kaise ho',
                    ),
                    ChatScreen(
                      images: 'images/masi.JPG',
                      title: 'MASI JI',
                      msg: 'khoob unnati karo',
                    ),
                  ],
                );
              },
            ),
            //STATUS BAR
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    StatusScreen(
                      images: 'images/bha.jpg',
                    ),
                  ],
                );
              },
            ),
            //CALLS
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallsScreen(
                      images: 'images/bha.jpg',
                      title: '',
                    ),
                  ],
                );
              },
            ),
          ],
        ),
        floatingActionButton: _tabController.index == 1
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                child: const Icon(
                  Icons.message,
                ),
              )
            : FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                child: const Icon(Icons.camera_alt),
              ));
  }
}
