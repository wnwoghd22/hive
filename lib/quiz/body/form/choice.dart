import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class ChoiceForm extends QuizForm {
  int checkValue = -1;
  final int answer;
  final int length;
  final List<String> options;

  @override
  bool check() {
    return checkValue == (answer - 1);
  }

  ChoiceForm({
    Key? key,
    required String description,
    required this.answer,
    required this.length,
    required this.options,
    Function? onChanged
  }) : super(key: key, description: description, onChanged: onChanged);

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
  Widget buildInput() {
    return Column(
      children: <Widget>[
        for (int i = 0; i < widget.length; ++i)
          Container(
            margin: const EdgeInsets.all(5),
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: choiceRadioTile(i)
              )
            ),
          )
      ],
    );
  }

  // TODO: make selection effect.
  RadioListTile choiceRadioTile(int i) {
    return RadioListTile(
      value: i,
      groupValue: _choice,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onChanged: (val) => setState(() {
        _choice = val;
        widget.checkValue = _choice;
        if (widget.onChanged != null) { // if without null check first, check animation does not work...
          widget.onChanged!();
        }
      }),
      title: Text(widget.options[i]),
    );
  }
}