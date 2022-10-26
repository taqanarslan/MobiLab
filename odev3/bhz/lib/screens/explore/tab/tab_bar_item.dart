import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey),
        Text(text,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400)),
      ],
    );
  }
}