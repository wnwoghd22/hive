import 'package:flutter/material.dart';
import 'package:hive/top/normal/tabs/dictTab.dart';
import 'package:hive/top/normal/tabs/examTab.dart';
import 'package:hive/top/normal/tabs/quizTab.dart';

class NormalPage extends StatefulWidget {
  final Function callback;
  const NormalPage({
    Key? key,
    required this.callback
  }) : super(key: key);

  @override
  _NormalPageState createState() => _NormalPageState();
}

class _NormalPageState extends State<NormalPage> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late int _currentIndex;
  late Widget _currentPage;
  late int _course;

  @override
  void initState() {
    super.initState();
    _course = 0;

    _page1 = const QuizTab();
    _page2 = const ExamTab();
    _page3 = const DictTab();
    _pages = [ _page1, _page2, _page3 ];
    _currentIndex = 0;
    _currentPage = _page1;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('드론 문제풀이'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  widget.callback();
                },
                child: const Text('조종자')
              )
            ]
        ),
        body: _currentPage,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            _changeTab(index);
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: '퀴즈풀이'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: '기출문제'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.announcement),
              label: '구술평가'
            ),
          ]
        )
      )
    );
  }
}
