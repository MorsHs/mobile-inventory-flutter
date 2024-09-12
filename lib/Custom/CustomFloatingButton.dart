import 'package:flutter/material.dart';

class Customfloatingbutton extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final String route;
  const Customfloatingbutton({super.key, required this.iconData, required this.color, required this.route});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => null,
      backgroundColor: Colors.white,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 10,
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }
}
