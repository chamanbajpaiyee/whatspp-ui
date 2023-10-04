import 'package:flutter/material.dart';
import 'package:whatspp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor: const Color(0xff075e54),
          primaryColorLight: const Color(0xff08d261),
          primarySwatch: Colors.teal),
      home: const HomeScreen(),
    );
  }
}
