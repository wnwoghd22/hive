import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class ChoiceForm extends QuizForm {
  int checkValue = -1;
  final int answer;
  final int length;
  final List<String> options;
  Function _checkEffect = () {};

  @override
  bool check() {
    _checkEffect();

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
  final List<Container> _tiles = [];
  final List<int> _tileState = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < widget.length; ++i) {
      _tileState.add(-1);
    }

    widget._checkEffect = () {
      for (int i = 0; i < _tiles.length; ++i) {
        if (i == _choice && i + 1 == widget.answer) {
          setState(() {
            _tileState[i] = 0; // correct answer
          });
          continue;
        }
        if (i + 1 == widget.answer) {
          setState(() {
            _tileState[i] = 1; // answer
          });
          continue;
        }
        if (i == _choice) {
          setState(() {
            _tileState[i] = 2; // wrong
          });
        }
      }
    };
  }

  @override
  Widget buildInput() {
    _tiles.clear();

    for (int i = 0; i < widget.length; ++i) {
      _tiles.add(Container(
        margin: const EdgeInsets.all(5),
        child: FractionallySizedBox(
            widthFactor: 0.7,
            child: Container(
                decoration: BoxDecoration(
                  color: _tileState[i] == -1 ? Colors.white :
                      _tileState[i] == 0 ? Colors.lightBlueAccent :
                      _tileState[i] == 1 ? Colors.greenAccent :
                          Colors.redAccent,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: choiceRadioTile(i)
            )
        ),
      ));
    }

    return Column(
      children:
        _tiles
      ,
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