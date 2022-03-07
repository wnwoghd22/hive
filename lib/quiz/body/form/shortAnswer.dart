import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class ShortAnswerForm extends QuizForm {
  String input = '';
  final String answer;
  final TextInputType inputType;
  Function _checkEffect = () {};

  @override
  bool check() {
    _checkEffect();

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
  int _answerState = -1;

  @override
  void initState() {
    super.initState();

    widget._checkEffect = () {
      setState(() {
        _answerState = widget.answer.compareTo(widget.input) == 0 ? 0 : 1;
      });
    };
  }

  @override
  Widget buildInput() {
    return Container(
            margin: const EdgeInsets.all(5),
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: TextField(
              controller: _controller,
              keyboardType: widget.inputType,
              onChanged: (value) {
                widget.input = value;
                if (widget.onChanged != null) {
                  widget.onChanged!();
                }
              },
              decoration: InputDecoration(
                labelText: "답을 입력하세요",
                fillColor: _answerState == -1 ? Colors.white :
                  _answerState == 0 ? Colors.lightBlueAccent :
                  Colors.redAccent,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blueGrey, width: 1.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
           )
      ),
    );
  }
}