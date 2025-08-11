import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 26,
        color: Colors.green,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
