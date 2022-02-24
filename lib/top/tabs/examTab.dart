import 'package:flutter/material.dart';
import 'package:hive/components/wideButton.dart';

class ExamTab extends StatelessWidget {
  const ExamTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wideButton('기출문제1', () {}),
            wideButton('기출문제2', () {}),
          ]
        )
      )
    );
  }
}
