import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyCreativeCounter());
}

class MyCreativeCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreativeCounterScreen(),
    );
  }
}
