import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDash extends StatelessWidget {
  const TextDash({super.key, required this.text, required this.fontsize});
  final String text;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.bold,),
    );
  }
}
