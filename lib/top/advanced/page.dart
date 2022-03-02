import 'package:flutter/material.dart';
import 'package:hive/top/advanced/tabs/examTab.dart';
import 'package:hive/top/advanced/tabs/part1.dart';
import 'package:hive/top/advanced/tabs/part2.dart';

class AdvancedPage extends StatefulWidget {
  final Function callback;
  const AdvancedPage({
    Key? key,
    required this.callback
  }) : super(key: key);

  @override
  _AdvancedPageState createState() => _AdvancedPageState();
}

class _AdvancedPageState extends State<AdvancedPage> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late int _currentIndex;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _page1 = const Part1Tab();
    _page2 = const Part2Tab();
    _page3 = const Exam2Tab();
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
                  child: const Text('지도조종자')
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
            )
        )
    );
  }
}
