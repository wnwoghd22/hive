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
    Function? onChanged
  }) : super(key: key, description: description, onChanged: onChanged);

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
    return Container(
            margin: const EdgeInsets.all(5),
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                 child: TextField(
               controller: _controller,
               keyboardType: widget.inputType,
               onChanged: (value) {
                 widget.input = value;
                 if (widget.onChanged != null) {
                   widget.onChanged!();
               }
             },
           )
         )
      ),
    );
  }
}