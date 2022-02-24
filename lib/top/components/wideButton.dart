import 'package:flutter/material.dart';

Widget wideButton(String text, void Function() onPressed) {
  return FractionallySizedBox(
    widthFactor: 0.5,
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(40),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    ),
  );
}