import 'package:flutter/material.dart';
import 'package:hive/quiz/body/body.dart';

class QuizPage extends StatelessWidget {
  final int chapter;

  const QuizPage({
    Key? key,
    required this.chapter
  }) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: QuizBody(chapter: chapter),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}
