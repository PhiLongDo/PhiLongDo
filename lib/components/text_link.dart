import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  const TextLink({required this.text, this.onTap, super.key});

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
