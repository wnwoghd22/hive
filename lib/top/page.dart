import 'package:flutter/material.dart';
import 'package:hive/top/advanced/page.dart';
import 'package:hive/top/normal/page.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  late int _currentPage;
  late Widget _page;
  late Widget _page1;
  late Widget _page2;
  late List<Widget> _pages;

  void setPage(int i) {
    setState(() {
      _currentPage = i;
      _page = _pages[_currentPage];
    });
  }

  @override
  void initState() {
    super.initState();

    _currentPage = 0;
    _page1 = NormalPage(callback: () { setPage(1); });
    _page2 = AdvancedPage(callback: () { setPage(0); });
    _pages = [ _page1, _page2 ];
    _page = _page1;
  }

  @override
  Widget build(BuildContext context) {
    return _page;
  }
}
