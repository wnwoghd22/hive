import 'package:flutter/material.dart';
import 'package:hive/components/wideButton.dart';
import 'package:hive/quiz/page.dart';

class Part2Tab extends StatelessWidget {
  const Part2Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  wideButton('무인비행장치 시스템 및 기체운용', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 0)))),
                  wideButton('드론산업 및 기술동향', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 1)))),
                  wideButton('안전관리 및 사고사례', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 2)))),
                  wideButton('비행교수법', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 3))))
                ]
            )
        )
    );
  }
}
