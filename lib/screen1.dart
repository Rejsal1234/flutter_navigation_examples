import 'package:flutter/material.dart';
import 'package:navigation_example/drawer_item.dart';
import 'package:navigation_example/page1.dart';
import 'package:navigation_example/page2.dart';
import 'package:navigation_example/page3.dart';

class Screen1 extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const Screen1(),
      );
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String name = "";
  int pageIndex = 0;

  _setPageIndex(int page) {
    setState(() {
      pageIndex = page;
    });
  }

  final List<Widget> _pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  final List<BottomNavigationBarItem> _bottomItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: "Settings"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: _bottomItems,
        currentIndex: pageIndex,
        onTap: (int page) {
          _setPageIndex(page);
        },
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Rejsal TB"),
                ],
              ),
            ),
            DrawerItem(
                title: "Page 1",
                selected: pageIndex == 0,
                onClick: () {
                  _setPageIndex(0);
                }),
            DrawerItem(
                title: "Page 2",
                selected: pageIndex == 1,
                onClick: () {
                  _setPageIndex(1);
                }),
            DrawerItem(
                title: "Page 3",
                selected: pageIndex == 2,
                onClick: () {
                  _setPageIndex(2);
                }),
          ],
        ),
      ),
      body: _pages[pageIndex],
    );
  }
}
