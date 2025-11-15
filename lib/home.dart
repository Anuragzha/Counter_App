import 'package:flutter/material.dart';
import 'color_utils.dart';
import 'emoji_widget.dart';

class CreativeCounterScreen extends StatefulWidget {
  const CreativeCounterScreen({super.key});
  @override
  _CreativeCounterScreenState createState() => _CreativeCounterScreenState();
}

class _CreativeCounterScreenState extends State<CreativeCounterScreen> {
  int counter = 0;
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Creative Counter using setState()"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter: $counter",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // Emoji widget
            EmojiWidget(counter: counter),

            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  bgColor = ColorUtils.getRandomColor();
                });
              },
              child: Text("Increment", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
