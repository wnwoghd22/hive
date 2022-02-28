import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/choice.dart';
import 'package:hive/quiz/body/form/interface/form.dart';
import 'package:hive/quiz/body/form/multiChoice.dart';
import 'package:hive/quiz/body/form/ox.dart';
import 'package:hive/quiz/body/form/shortAnswer.dart';
import 'package:hive/quiz/data/data.dart';
import 'package:hive/quiz/data/quiz.dart';
import 'package:hive/components/wideButton.dart';

class ExamBody extends StatefulWidget {
  final int chapter;

  const ExamBody({
    Key? key,
    required this.chapter
  }) : super(key: key);

  @override
  _ExamBodyState createState() => _ExamBodyState();
}

class _ExamBodyState extends State<ExamBody> {
  final int _maxNum = 20;
  late int _currentNum = 0;
  late int _correctAnswers = 0;

  late QuizForm _quizForm;

  late Widget _resultText;
  late Widget _checkButton;

  final List<Quiz> quizList = [];

  Widget buildQuizForm(Quiz q, int index) {
    switch(q.type) {
      case QuizType.choice:
         return ChoiceForm(
          description: index.toString() + '. ' + (q as QuizChoice).description,
          answer: q.answer,
          length: q.length,
          options: q.options,
        );
      case QuizType.multiChoice:
        return MultiChoiceForm(
            description: index.toString() + '. ' + (q as QuizMultiChoice).description,
            answer: q.answer,
            length: q.length,
            options: q.options
        );
      case QuizType.ox:
        return OXForm(
            description: index.toString() + '. ' +  (q as QuizOX).description,
            answer: q.answer
        );
      case QuizType.shortAnswer:
        return ShortAnswerForm(
            description: index.toString() + '. ' + (q as QuizShort).description,
            answer: q.answer,
            inputType: q.inputType
        );
    }
  }

  @override
  void initState() {
    super.initState();

    for (Quiz q in QuizData.data[widget.chapter]) {
      quizList.add(q);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(initialPage: 0),
      itemCount: quizList.length,
      itemBuilder: (BuildContext context, int index) {
        return buildQuizForm(quizList[index], index);
      }
    );
  }
}
