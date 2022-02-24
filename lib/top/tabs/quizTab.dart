import 'package:flutter/material.dart';
import 'package:hive/quiz/page.dart';

class QuizTab extends StatelessWidget {
  const QuizTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizPage())
                    );
                  },
                  child: Text('드론 기초'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('항공기상'),
            ),
            Text('항공법규'),
            Text('항공역학'),
          ]
        )
      )
    );
  }
}
