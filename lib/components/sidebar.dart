import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  launchBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text('Hive'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
		// TODO: need to make link well-functioning on mobile device... probably need to write codes in .XML file
                onPressed: () => {
                  launchBrowser('https://drone.onestop.go.kr/')
                },
                child: const Text('원스톱 서비스')),
          )
        ],
      )
    );
  }
}
