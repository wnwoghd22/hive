import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class OXForm extends QuizForm {
  int checkValue = -1;
  final bool answer;
  final List<String> options = [ 'O', 'X' ];

  @override
  bool check() {
    if (checkValue == -1) {
      return false;
    }

    bool result = checkValue == 0 ? true : false;

    return result == answer;
  }

  OXForm({
    Key? key,
    required String description,
    required this.answer,
  }) : super(key: key, description: description);

  @override
  _OXFormState createState() => _OXFormState();
}

class _OXFormState extends QuizFormState<OXForm> {
  int _choice = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildInput() {
    return Column(
      children: <Widget>[
        for (int i = 0; i < 2; ++i)
          choiceRadioTile(i)
      ],
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