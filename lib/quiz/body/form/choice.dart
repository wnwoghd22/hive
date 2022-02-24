import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/form.dart';

class ChoiceForm extends StatefulWidget implements QuizForm {
  const ChoiceForm({
    Key? key,
    
  }) : super(key: key);


  @override
  bool check() {


    return false;
  }

  @override
  _ChoiceFormState createState() => _ChoiceFormState();
}

class _ChoiceFormState extends State<ChoiceForm> {
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
          Text('문제'),
          Column(
            children: <Widget>[
              for (int i = 0; i < 4; ++i)
                choiceRadioTile(i + 1)
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
      onChanged: (val) => setState(() => _choice = val),
      title: Text(i.toString() + '번 보기'),
    );
  }
}