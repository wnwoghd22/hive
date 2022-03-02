import 'package:flutter/material.dart';
import 'package:hive/components/wideButton.dart';
import 'package:hive/exam/page.dart';

class Exam2Tab extends StatelessWidget {
  const Exam2Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wideButton('기출문제1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => ExamPage(chapter: 0)))),
            wideButton('기출문제2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => ExamPage(chapter: 1)))),
          ]
        )
      )
    );
  }
}
