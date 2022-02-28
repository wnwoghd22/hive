import 'package:flutter/cupertino.dart';

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
          Text(
            widget.description,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          buildInput()
        ],
      ),
    );
  }
}