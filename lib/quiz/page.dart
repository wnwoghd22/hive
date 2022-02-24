import 'package:flutter/material.dart';
import 'package:hive/quiz/body/body.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

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
        body: QuizBody(),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}
