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

  int score = 0;
  int numOfQuestions = 0;

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

  void onChanged() {
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
          onChanged: onChanged
        );
      case QuizType.multiChoice:
        return MultiChoiceForm(
            description: index.toString() + '. ' + (q as QuizMultiChoice).description,
            answer: q.answer,
            length: q.length,
            options: q.options,
            onChanged: onChanged
        );
      case QuizType.ox:
        return OXForm(
            description: index.toString() + '. ' +  (q as QuizOX).description,
            answer: q.answer,
            onChanged: onChanged
        );
      case QuizType.shortAnswer:
        return ShortAnswerForm(
            description: index.toString() + '. ' + (q as QuizShort).description,
            answer: q.answer,
            inputType: q.inputType,
            onChanged: onChanged
        );
    }
  }

  @override
  void initState() {
    super.initState();

    widget.numOfQuestions = QuizData.data[widget.chapter].length;
    for (Quiz q in QuizData.data[widget.chapter]) {
      quizList.add(q);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return PageView.builder(
    //   controller: PageController(initialPage: 0),
    //   itemCount: quizList.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     quizWidgets.add(buildQuizForm(quizList[index], index));
    //     return quizWidgets[index];
    //   }
    // );

    int index = 0;
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
