import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  const TextBody({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 18, color: Colors.grey));
  }
}
