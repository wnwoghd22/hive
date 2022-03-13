import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class OXForm extends QuizForm {
  int checkValue = -1;
  final bool answer;
  final List<String> options = [ 'O', 'X' ];
  Function _checkEffect = () {};

  @override
  bool check() {
    _checkEffect();

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
    Function? onChanged
  }) : super(key: key, description: description, onChanged: onChanged);

  @override
  _OXFormState createState() => _OXFormState();
}

class _OXFormState extends QuizFormState<OXForm> {
  int _choice = -1;
  final List<Container> _tiles = [];
  final List<int> _tileState = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 2; ++i) {
      _tileState.add(-1);
    }

    widget._checkEffect = () {
      int _answer = widget.answer ? 0 : 1;

      for (int i = 0; i < _tiles.length; ++i) {
        if (i == _choice && i == _answer) {
          setState(() {
            _tileState[i] = 0; // correct answer
          });
          continue;
        }
        if (i == _answer) {
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

    for (int i = 0; i < 2; ++i) {
      _tiles.add(Container(
        margin: const EdgeInsets.all(5),
        child: FractionallySizedBox(
            widthFactor: 0.85,
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

  RadioListTile choiceRadioTile(int i) {
    return RadioListTile(
      value: i,
      groupValue: _choice,
      onChanged: (val) => setState(() {
        _choice = val;
        widget.checkValue = _choice;
        if (widget.onChanged != null) {
          widget.onChanged!();
        }
      }),
      title: Text(widget.options[i]),
    );
  }
}