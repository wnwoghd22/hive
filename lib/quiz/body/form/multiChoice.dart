import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class MultiChoiceForm extends StatefulWidget implements QuizForm {
  List<bool> checked = [];
  final String description;
  final List<bool> answer;
  final int length;
  final List<String> options;

  @override
  bool check() {
    return listEquals(checked, answer);
  }

  MultiChoiceForm({
    Key? key,
    required this.description,
    required this.answer,
    required this.length,
    required this.options
  }) : super(key: key) {
    int i = length;

    while (i-- > 0) {
      checked.add(false);
    }
  }

  @override
  _MultiChoiceFormState createState() => _MultiChoiceFormState();
}

class _MultiChoiceFormState extends State<MultiChoiceForm> {
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
                choiceCheckTile(i)
            ],
          ),
        ],
      ),
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