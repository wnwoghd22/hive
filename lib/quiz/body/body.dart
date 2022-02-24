import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/choice.dart';
import 'package:hive/quiz/body/form/interface/form.dart';
import 'package:hive/quiz/body/form/ox.dart';
import 'package:hive/quiz/data/data.dart';
import 'package:hive/quiz/data/quiz.dart';

class QuizBody extends StatefulWidget {
  const QuizBody({Key? key}) : super(key: key);

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  final int _maxNum = 20;
  late int _currentNum = 0;
  late int _correctAnswers = 0;

  late Widget _form;
  late QuizForm _quizForm;
  
  late Widget _resultText;
  late Widget _checkButton;

  final List<Quiz> quizList = [];

  void setQuizForm(Quiz q) {
    switch(q.type) {
      case QuizType.choice:
        _form = ChoiceForm(
          description: (q as QuizChoice).description,
          answer: q.answer,
          length: q.length,
          options: q.options,
        );
        break;
      case QuizType.multiChoice:
          q as QuizMultiChoice;

        break;
      case QuizType.ox:
        _form = OXForm(
          description: (q as QuizOX).description,
          answer: q.answer
        );
        break;
      case QuizType.shortAnswer:
        // TODO: Handle this case.
        break;
    }
    _quizForm = _form as QuizForm;
  }

  void check() {
    setState(() {
      _resultText = _quizForm.check() ? Text('O') : Text('X');
    });
  }

  @override
  void initState() {
    super.initState();

    for (Quiz q in QuizData.data) {
      quizList.add(q);
    }

    setQuizForm(quizList[_currentNum]);
    
    _resultText = Text('선택하세요');

    _checkButton = ElevatedButton(onPressed: check, child: Text('확인'));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_currentNum.toString() + '/' + _maxNum.toString()),
            _resultText,
            _form,
            _checkButton
          ],
        ),
      ),
    );
  }
}
