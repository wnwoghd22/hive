import 'package:flutter/material.dart';
import 'package:hive/top/components/wideButton.dart';

class DictTab extends StatelessWidget {
  const DictTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wideButton('구술평가', () {})
          ]
        )
      )
    );
  }
}
