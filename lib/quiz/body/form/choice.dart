import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class ChoiceForm extends QuizForm {
  int checkValue = -1;
  final String description;
  final int answer;
  final int length;
  final List<String> options;

  @override
  bool check() {
    return checkValue == (answer - 1);
  }

  ChoiceForm({
    Key? key,
    required this.description,
    required this.answer,
    required this.length,
    required this.options
  }) : super(key: key);

  @override
  _ChoiceFormState createState() => _ChoiceFormState();
}

class _ChoiceFormState extends QuizFormState<ChoiceForm> {
  int _choice = -1;

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
          Column(
            children: <Widget>[
              for (int i = 0; i < widget.length; ++i)
                choiceRadioTile(i)
            ],
          ),
        ],
      ),
    );
  }

  RadioListTile choiceRadioTile(int i) {
    return RadioListTile(
      value: i,
      groupValue: _choice,
      onChanged: (val) => setState(() {
        _choice = val;
        widget.checkValue = _choice;
      }),
      title: Text(widget.options[i]),
    );
  }
}