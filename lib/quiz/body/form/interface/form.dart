import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class IQuiz {
  bool check();
}

abstract class QuizForm extends StatefulWidget implements IQuiz {
  final String description;
  final Function? onChanged;

  const QuizForm({
    Key? key,
    required this.description,
    this.onChanged
  }) : super(key: key);
}

abstract class QuizFormState<T extends QuizForm> extends State<T> with AutomaticKeepAliveClientMixin {
  Widget buildInput();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 32),
          FractionallySizedBox(
            widthFactor: 0.85,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text(
                  widget.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
            ),
          ),
          buildInput(),

          // TODO: implement solution
          // Text(sol),
        ],
      ),
    );
  }
}