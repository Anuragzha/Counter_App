import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  final int counter;

  EmojiWidget({required this.counter});

  String getEmoji() {
    if (counter < 5) return "😐";
    if (counter < 10) return "🙂";
    if (counter < 15) return "😄";
    return "🤩";
  }

  @override
  Widget build(BuildContext context) {
    return Text(getEmoji(), style: TextStyle(fontSize: 80));
  }
}
