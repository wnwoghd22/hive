import 'package:flutter/material.dart';
import 'package:hive/top/tabs/dictTab.dart';
import 'package:hive/top/tabs/examTab.dart';
import 'package:hive/top/tabs/quizTab.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late int _currentIndex;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
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
          title: Text('드론 문제풀이')
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

