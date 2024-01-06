import 'package:flutter/material.dart';
import 'package:navigation_example/screen3.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Page 4"),
          MaterialButton(
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).push(Screen3.route(""));
            },
            child: const Text("Go to screen 3"),
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Back to screen 1"),
          ),
        ],
      ),
    );
  }
}
