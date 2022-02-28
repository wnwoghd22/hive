import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class ShortAnswerForm extends QuizForm {
  String input = '';
  final String answer;
  final TextInputType inputType;

  @override
  bool check() {
    return answer.compareTo(input) == 0;
  }

  ShortAnswerForm({
    Key? key,
    required String description,
    required this.answer,
    required this.inputType,
  }) : super(key: key, description: description);

  @override
  _ShortAnswerFormState createState() => _ShortAnswerFormState();
}

class _ShortAnswerFormState extends QuizFormState<ShortAnswerForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildInput() {
    return TextField(
      controller: _controller,
      keyboardType: widget.inputType,
      onChanged: (value) {
        widget.input = value;
      },
    );
  }
}