import 'package:flutter/material.dart';
import 'package:katatataki/rootes/home_screen.dart';
import 'package:katatataki/rootes/notice_route.dart';
import 'package:katatataki/rootes/search_route.dart';
import 'package:katatataki/rootes/shrink_top_list_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  _RootWidget createState() => _RootWidget();
}

class _RootWidget extends State<RootWidget> {
  int _selectedIndex = 3;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  // アイコン情報
  final Map _RootWidgetIcons = {
    'ホーム': {'icon': Icons.home, 'route': const ShrinkTopListPage()},
    '検索': {'icon': Icons.search, 'route': SearchRoute()},
    '通知': {'icon': Icons.notifications, 'route': NoticeRoute()},
    'COVID19': {'icon': Icons.fact_check_outlined, 'route': const HomeScreen()},
  };

  // アイコン順番
  final List _footerItemOrder = [
    'ホーム',
    '検索',
    '通知',
    'COVID19',
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _footerItemOrder.length; i++) {
      _bottomNavigationBarItems.add(_CreateIcon(_footerItemOrder[i]));
    }
  }

  // アイコンを作成する
  BottomNavigationBarItem _CreateIcon(String key) {
    return BottomNavigationBarItem(
      icon: Icon(_RootWidgetIcons[key]['icon']),
      title: Text(key),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _RootWidgetIcons[_footerItemOrder.asMap()[_selectedIndex]]['route'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.black45,
      ),
    );
  }
}
