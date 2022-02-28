import 'package:flutter/material.dart';
import 'package:hive/exam/body/body.dart';
import 'package:hive/exam/result.dart';
import 'package:hive/quiz/body/body.dart';

class ExamPage extends StatelessWidget {
  final int chapter;

  const ExamPage({
    Key? key,
    required this.chapter
  }) : super(key: key);

  Widget build(BuildContext context) {
    ExamBody _body = ExamBody(chapter: chapter);

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('기출문제'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  // TODO: get score and number of questions from child
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultPage(score: _body.score, numOfQuestions: _body.numOfQuestions)));
                },
                child: const Text('제출'),
              )
            ]
          ),
          body: _body,
          bottomNavigationBar: BottomAppBar(),
        )
    );
  }
}
