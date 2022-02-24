import 'package:flutter/material.dart';

class ExamTab extends StatelessWidget {
  const ExamTab({Key? key}) : super(key: key);

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
                  onPressed: () {},
                  child: Text('기출문제1'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('기출문제2'),
            ),
          ]
        )
      )
    );
  }
}
