import 'package:flutter/material.dart';
import 'package:hive/components/wideButton.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int numOfQuestions;

  const ResultPage({
    Key? key,
    required this.score,
    required this.numOfQuestions
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('기출문제')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: score.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "/" + numOfQuestions.toString(),
                      style: const TextStyle(
                        fontSize: 24
                      ),
                    )
                  ]
                ),
              ),
              wideButton('뒤로', () => Navigator.pop(context))
            ]
          )
        ),
        bottomNavigationBar: const BottomAppBar()
      )
    );
  }
}
