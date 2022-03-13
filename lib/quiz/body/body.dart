import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/choice.dart';
import 'package:hive/quiz/body/form/interface/form.dart';
import 'package:hive/quiz/body/form/multiChoice.dart';
import 'package:hive/quiz/body/form/ox.dart';
import 'package:hive/quiz/body/form/shortAnswer.dart';
import 'package:hive/quiz/data/data.dart';
import 'package:hive/quiz/data/quiz.dart';
import 'package:hive/components/wideButton.dart';

class QuizBody extends StatefulWidget {
  final int chapter;

  const QuizBody({
    Key? key,
    required this.chapter
  }) : super(key: key);

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  final int _maxNum = 20;
  late int _currentNum = 0;
  late int _correctAnswers = 0;

  late QuizForm _quizForm;

  late Widget _checkButton;

  final List<Quiz> quizList = [];

  void setQuizForm(Quiz q) {
    switch(q.type) {
      case QuizType.choice:
        _quizForm = ChoiceForm(
          description: (q as QuizChoice).description,
          answer: q.answer,
          length: q.length,
          options: q.options,
        );
        break;
      case QuizType.multiChoice:
        _quizForm = MultiChoiceForm(
            description: (q as QuizMultiChoice).description,
            answer: q.answer,
            length: q.length,
            options: q.options
        );
        break;
      case QuizType.ox:
        _quizForm = OXForm(
          description: (q as QuizOX).description,
          answer: q.answer
        );
        break;
      case QuizType.shortAnswer:
        _quizForm = ShortAnswerForm(
            description:  (q as QuizShort).description,
            answer: q.answer,
            inputType: q.inputType
        );
        break;
    }
  }

  void check() {
    setState(() {
      _correctAnswers += _quizForm.check() ? 1 : 0;
      if (_currentNum + 1 == quizList.length)
        _checkButton = Text('모두 풀었습니다.');
      else
        _checkButton = wideButton('다음 문제', nextQuestion);
    });
  }

  void nextQuestion() {
    setState(() {
      _currentNum++;
      setQuizForm(quizList[_currentNum]);
      _checkButton = wideButton('확인', check);
    });
  }

  @override
  void initState() {
    super.initState();

    for (Quiz q in QuizData.data[widget.chapter]) {
      quizList.add(q);
    }

    setQuizForm(quizList[_currentNum]);

    _checkButton = wideButton('확인', check);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        // mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Does it work?
        mainAxisSize: MainAxisSize.max,

        children: [
          Text((_currentNum + 1).toString() + '/' + _maxNum.toString()),
          //TODO: using PageView instead
          Center(
              child: _quizForm
          ),
	        const Spacer(),
	  // TODO: make checkButton stick to bottom
          _checkButton
        ],
      ),
    );
  }
}
