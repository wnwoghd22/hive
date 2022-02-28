import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class MultiChoiceForm extends QuizForm {
  List<bool> checked = [];
  final List<bool> answer;
  final int length;
  final List<String> options;

  @override
  bool check() {
    return listEquals(checked, answer);
  }

  MultiChoiceForm({
    Key? key,
    required String description,
    required this.answer,
    required this.length,
    required this.options
  }) : super(key: key, description: description) {
    int i = length;

    while (i-- > 0) {
      checked.add(false);
    }
  }

  @override
  _MultiChoiceFormState createState() => _MultiChoiceFormState();
}

class _MultiChoiceFormState extends QuizFormState<MultiChoiceForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildInput() {
    return Column(
      children: <Widget>[
        for (int i = 0; i < widget.length; ++i)
          choiceCheckTile(i)
      ],
    );
  }

  CheckboxListTile choiceCheckTile(int i) {
    return CheckboxListTile(
      value: widget.checked[i],
      onChanged: (bool? val) => setState(() {
        widget.checked[i] = val!;
      }),
      title: Text(widget.options[i]),
    );
  }
}