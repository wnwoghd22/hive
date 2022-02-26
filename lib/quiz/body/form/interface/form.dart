import 'package:flutter/cupertino.dart';

abstract class IQuiz {
  bool check();
}

abstract class QuizForm extends StatefulWidget implements IQuiz {
  const QuizForm({Key? key}) : super(key: key);
}

abstract class QuizFormState<T extends QuizForm> extends State<T> {

}