import 'package:flutter/cupertino.dart';

abstract class IQuiz {
  bool check();
}

abstract class QuizForm extends StatefulWidget implements IQuiz {
  final String description;

  const QuizForm({
    Key? key,
    required this.description
  }) : super(key: key);
}

abstract class QuizFormState<T extends QuizForm> extends State<T> {
  Widget buildInput();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            widget.description,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          buildInput()
        ],
      ),
    );
  }
}