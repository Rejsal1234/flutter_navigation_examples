import 'package:flutter/material.dart';
import 'package:navigation_example/page2.dart';
import 'package:navigation_example/page3.dart';
import 'package:navigation_example/page4.dart';

class Screen2 extends StatefulWidget {
  static route(String name) => MaterialPageRoute(
        builder: (context) => Screen2(
          name: name,
        ),
      );
  const Screen2({required this.name, super.key});

  final String name;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String returnedTitleFromScreen3 = "";

  final List<Widget> _pages = [
    const Page4(),
    const Page2(),
    const Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Screen 2'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Favorites'),
              Tab(text: 'Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: _pages,
        ),
      ),
    );
  }
}
