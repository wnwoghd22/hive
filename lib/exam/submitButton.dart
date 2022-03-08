import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final Function callback;
  const SubmitButton({
    Key? key,
    required this.callback
  }) : super(key: key);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  late bool _submit;
  late Widget _button;

  @override
  void initState() {
    super.initState();

    _submit = false;
    _button = ElevatedButton(
      onPressed: () {
        setState(() {
          _submit = true;
        });
        widget.callback();
      },
      child: const Text('제출'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: !_submit ? _button : const Center(child: Text("제출하셨습니다.")),
    );
  }
}
