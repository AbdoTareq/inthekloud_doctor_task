import 'package:flutter/material.dart';

class BorderedIconButton extends StatelessWidget {
  const BorderedIconButton({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColorDark),
          ),
          child: IconButton(
            icon: Icon(icon, color: Theme.of(context).primaryColorDark),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
