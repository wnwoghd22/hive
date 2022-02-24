import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class ShortAnswerForm extends StatefulWidget implements QuizForm {
  String input = '';
  final String description;
  final String answer;
  final TextInputType inputType;

  @override
  bool check() {
    return answer.compareTo(input) == 0;
  }

  ShortAnswerForm({
    Key? key,
    required this.description,
    required this.answer,
    required this.inputType,
  }) : super(key: key);

  @override
  _ShortAnswerFormState createState() => _ShortAnswerFormState();
}

class _ShortAnswerFormState extends State<ShortAnswerForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.description),
          TextField(
            controller: _controller,
            keyboardType: widget.inputType,
            onChanged: (value) {
              widget.input = value;
            },
          )
        ],
      ),
    );
  }
}