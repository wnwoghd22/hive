import 'package:flutter/material.dart';
import 'package:hive/exam/data/data.dart';
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

  int score = 0;
  int numOfQuestions = 0;
  Function submit = (() {});

  ExamBody({
    Key? key,
    required this.chapter
  }) : super(key: key);

  @override
  _ExamBodyState createState() => _ExamBodyState();
}

class _ExamBodyState extends State<ExamBody> {
  final List<Quiz> quizList = [];
  List<QuizForm> quizWidgets = [];

  void submit() {
    int score = 0;

    for (QuizForm q in quizWidgets) {
      if (q.check()) {
        ++score;
      }
    }

    widget.score = score;
  }

  QuizForm buildQuizForm(Quiz q, int index) {
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
            options: q.options,
        );
      case QuizType.ox:
        return OXForm(
            description: index.toString() + '. ' +  (q as QuizOX).description,
            answer: q.answer,
        );
      case QuizType.shortAnswer:
        return ShortAnswerForm(
            description: index.toString() + '. ' + (q as QuizShort).description,
            answer: q.answer,
            inputType: q.inputType,
        );
    }
  }

  @override
  void initState() {
    super.initState();

    widget.submit = submit;
    widget.numOfQuestions = ExamData.data[widget.chapter].length;
    for (Quiz q in ExamData.data[widget.chapter]) {
      quizList.add(q);
    }
  }

  @override
  Widget build(BuildContext context) {
    int index = 1;
    quizWidgets = [
      for (Quiz q in quizList)
        buildQuizForm(q, index++)
    ];
    
    return PageView(
      controller: PageController(initialPage: 0),
      children: quizWidgets,
    );
  }
}
