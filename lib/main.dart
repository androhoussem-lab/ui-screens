import 'package:flutter/material.dart';
import 'package:uiscreens/profiles/profile_001/profile_01.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: 'UI CHALLENGES',
      debugShowCheckedModeBanner: false,
      home: Profile01(),
    );
  }
}

