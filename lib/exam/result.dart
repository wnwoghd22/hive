import 'package:flutter/material.dart';
import 'package:hive/components/wideButton.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int numOfQuestions;

  const ResultPage({
    Key? key,
    required this.score,
    required this.numOfQuestions
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('기출문제')
        ),
        body: Center(
          child: Column(
            children: [
              Text(score.toString() + "/" + numOfQuestions.toString()),
              wideButton('뒤로', () => Navigator.pop(context))
            ]
          )
        ),
        bottomNavigationBar: const BottomAppBar()
      )
    );
  }
}
