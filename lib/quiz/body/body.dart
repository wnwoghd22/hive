import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/choice.dart';
import 'package:hive/quiz/body/form/form.dart';

class QuizBody extends StatefulWidget {
  const QuizBody({Key? key}) : super(key: key);

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  final int _maxNum = 20;
  late int _currentNum = 0;
  late int _correctAnswers = 0;

  late QuizForm _quizForm;
  late Widget _form;

  @override
  void initState() {
    super.initState();

    _form = ChoiceForm();
    _quizForm = _form as QuizForm;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_currentNum.toString() + '/' + _maxNum.toString()),
            _form
          ],
        ),
      ),
    );
  }
}
