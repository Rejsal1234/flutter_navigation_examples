import 'package:flutter/material.dart';
import 'package:navigation_example/screen2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Page 1"),
          MaterialButton(
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).push(Screen2.route(""));
            },
            child: const Text("Go to screen 2"),
          ),
        ],
      ),
    );
  }
}
