import 'package:flutter/material.dart';
import 'package:slack_testing/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slack',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
