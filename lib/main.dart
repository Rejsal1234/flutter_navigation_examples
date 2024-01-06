import 'package:flutter/material.dart';
import 'package:navigation_example/screen1.dart';

void main() {
  runApp(const NavigationExample());
}

class NavigationExample extends StatelessWidget {
  const NavigationExample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Screen1(),
    );
  }
}
