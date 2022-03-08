import 'package:flutter/material.dart';
import 'package:hive/exam/body/body.dart';
import 'package:hive/exam/result.dart';
import 'package:hive/exam/submitButton.dart';
import 'package:hive/quiz/body/body.dart';

class ExamPage extends StatelessWidget {
  final int chapter;

  const ExamPage({
    Key? key,
    required this.chapter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExamBody _body = ExamBody(chapter: chapter);

    Future<void> alertScoreDialog(int score, int numOfQuestions) async {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              //Dialog Main Title
              title: const Text("제출 결과"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    score.toString() + "/" + numOfQuestions.toString()
                  ),
                ],
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("확인"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    }

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('기출문제'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            ),
            actions: [
              SubmitButton(callback: () {
                _body.submit();
                alertScoreDialog(_body.score, _body.numOfQuestions);
              }),
            ]
          ),
          body: _body,
          bottomNavigationBar: const BottomAppBar(),
        )
    );
  }
}
