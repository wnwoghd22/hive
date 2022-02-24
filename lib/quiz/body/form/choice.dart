import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/form.dart';

class ChoiceForm extends StatefulWidget implements QuizForm {
  const ChoiceForm({Key? key}) : super(key: key);

  @override
  bool check() {
    // TODO: implement Check
    throw UnimplementedError();
  }

  @override
  _ChoiceFormState createState() => _ChoiceFormState();
}

class _ChoiceFormState extends State<ChoiceForm> {


  @override
  Widget build(BuildContext context) {
    return Text('choice');
  }

}
