import 'package:flutter/material.dart';

Widget wideButton(String text, void Function() onPressed) {
  return FractionallySizedBox(
    widthFactor: 0.7,
    child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(40),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    ),
  );
}