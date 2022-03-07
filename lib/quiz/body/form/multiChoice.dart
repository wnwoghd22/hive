import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/quiz/body/form/interface/form.dart';

class MultiChoiceForm extends QuizForm {
  List<bool> checked = [];
  final List<bool> answer;
  final int length;
  final List<String> options;
  Function _checkEffect = () {};

  @override
  bool check() {
    _checkEffect();

    return listEquals(checked, answer);
  }

  MultiChoiceForm({
    Key? key,
    required String description,
    required this.answer,
    required this.length,
    required this.options,
    Function? onChanged
  }) : super(key: key, description: description, onChanged: onChanged) {
    int i = length;

    while (i-- > 0) {
      checked.add(false);
    }
  }

  @override
  _MultiChoiceFormState createState() => _MultiChoiceFormState();
}

class _MultiChoiceFormState extends QuizFormState<MultiChoiceForm> {
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

        if (!widget.checked[i] && !widget.answer[i]) {
          setState(() {
            _tileState[i] = -1; // none
          });
          continue;
        }
        if (widget.checked[i] && widget.answer[i]) {
          setState(() {
            _tileState[i] = 0; // correct
          });
          continue;
        }
        if (!widget.checked[i] && widget.answer[i]) {
          setState(() {
            _tileState[i] = 1; // answer
          });
          continue;
        }
        if (widget.checked[i] && !widget.answer[i]) {
          setState(() {
            _tileState[i] = 2; // wrong
          });
          continue;
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
                child: choiceCheckTile(i)
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

  CheckboxListTile choiceCheckTile(int i) {
    return CheckboxListTile(
      value: widget.checked[i],
      onChanged: (bool? val) => setState(() {
        widget.checked[i] = val!;
        if (widget.onChanged != null) {
          widget.onChanged!();
        }
      }),
      title: Text(widget.options[i]),
    );
  }
}