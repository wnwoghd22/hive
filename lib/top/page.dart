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
  late int _course;
  late Widget _bottomBar1;
  late Widget _bottomBar2;
  late List<Widget> _bottomBars;
  late Widget _bottomBar;
  late List<DropdownMenuItem<int>> _courseItems;

  @override
  void initState() {
    super.initState();
    _page1 = const QuizTab();
    _page2 = const ExamTab();
    _page3 = const DictTab();
    _pages = [ _page1, _page2, _page3 ];
    _currentIndex = 0;
    _currentPage = _page1;
    _course = 0;
    _bottomBar1 = BottomNavigationBar(
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
    );
    _bottomBar2 = BottomNavigationBar(
        onTap: (index) {
          _changeTab(index);
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Part 1'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Part 2'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: '기출문제'
          ),
        ]
    );
    _bottomBars = [ _bottomBar1, _bottomBar2 ];

    List<String> courseList = ['조종자', '지도조종자' ];
    _courseItems = [];
    for (int i = 0; i < courseList.length; ++i) {
      _courseItems.add(
        DropdownMenuItem(
          child: Text(courseList[i]),
          value: i,
        )
      );
    }

    _bottomBar = _bottomBars[0];
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  void _selectCourse(int value) {
    setState(() {
      _bottomBar = _bottomBars[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('드론 문제풀이'),
          actions: [
            DropdownButton<int>(
              value: _course,
              items: _courseItems,
              onChanged: (value) {
                setState(() {
                  _course = value!;
                });
                _selectCourse(_course);
              })
          ]
      ),
        body: _currentPage,
        bottomNavigationBar: _bottomBar
      )
    );
  }
}
