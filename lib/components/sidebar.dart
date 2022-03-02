import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Link(
            uri: Uri.parse('https://drone.onestop.go.kr/'),
            builder: (context, onPressed) => ElevatedButton(
              onPressed: onPressed,
              child: const Text('원스톱 서비스')
            )
          )
        ],
      )
    );
  }
}
