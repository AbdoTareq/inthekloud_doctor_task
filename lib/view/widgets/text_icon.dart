import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  const TextIcon({
    Key key,
    @required this.text,
    @required this.icon,
    this.color = Colors.indigo,
  }) : super(key: key);

  final String text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 13, color: color),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon, size: 20, color: color),
      ],
    );
  }
}
