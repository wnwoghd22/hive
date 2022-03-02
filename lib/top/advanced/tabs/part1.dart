import 'package:flutter/material.dart';
import 'package:hive/components/wideButton.dart';
import 'package:hive/quiz/page.dart';

class Part1Tab extends StatelessWidget {
  const Part1Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  wideButton('항공안전법', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 0)))),
                  wideButton('항공사업법', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 1)))),
                  wideButton('공역 및 항공안전', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 2)))),
                  wideButton('무인항공기 인적요인', () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(chapter: 3))))
                ]
            )
        )
    );
  }
}
