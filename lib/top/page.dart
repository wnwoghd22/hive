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
  late Widget _page4;
  late Widget _page5;
  late Widget _page6;
  late int _currentIndex;
  late Widget _currentPage;

  late int _course;
  late List<Widget> _coursePages;
  late Widget _course1;
  late Widget _course2;
  late Widget _currentCoursePage;
  late List<DropdownMenuItem<int>> _courseItems;

  Widget _buildNormalBottomBar() {
    return BottomNavigationBar(
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
  }
  Widget _buildAdvancedBottomBar() {
    return BottomNavigationBar(
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
  }

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

    _course1 = Scaffold(
      body: _currentPage,
      bottomNavigationBar: _buildNormalBottomBar()
    );
    _course2 = Scaffold(
      body: _currentPage,
      bottomNavigationBar: _buildAdvancedBottomBar()
    );
    _coursePages = [ _course1, _course2 ];
    _currentCoursePage = _coursePages[0];
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  void _selectCourse(int value) {
    setState(() {
      
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
        body: _currentCoursePage
      )
    );
  }
}
