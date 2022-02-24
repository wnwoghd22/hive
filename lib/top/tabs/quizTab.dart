import 'package:flutter/material.dart';
import 'package:hive/quiz/page.dart';
import 'package:hive/components/wideButton.dart';

class QuizTab extends StatelessWidget {
  const QuizTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wideButton('드론 기초', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 0)))),
            wideButton('항공기상', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 1)))),
            wideButton('항공법규', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 2)))),
            wideButton('항공역학', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 3))))
          ]
        )
      )
    );
  }
}
