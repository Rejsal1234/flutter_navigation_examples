import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  static route(String title) => MaterialPageRoute(
        builder: (context) => Screen3(title: title),
      );

  const Screen3({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context, title);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$title from screen2"),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pop(context, title);
              },
              child: const Text("Back to screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
