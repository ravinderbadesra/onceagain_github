import 'package:flutter/material.dart';

import 'firstscreen.dart';

void main() {
  runApp(MyScreen());
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
