import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {required this.title,
      required this.selected,
      required this.onClick,
      super.key});

  final String title;
  final bool selected;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      selected: selected,
      selectedColor: Colors.white,
      selectedTileColor: Colors.amber,
      onTap: () {
        onClick();
        Navigator.pop(context);
      },
    );
  }
}
