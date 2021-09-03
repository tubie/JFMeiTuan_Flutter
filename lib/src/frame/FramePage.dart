import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';
import 'package:meituanflutter/src/ecommerce/conreoller/ECommercePage.dart';
import 'package:meituanflutter/src/home/controller/HomePage.dart';
import 'package:meituanflutter/src/message/controller/MessagePage.dart';
import 'package:meituanflutter/src/mine/controller/MinePage.dart';

class FramePage extends StatefulWidget {
  FramePage({Key key, this.title, this.selectedIndex = 0}) : super(key: key);

  final String title;
  final int selectedIndex;

  @override
  State<StatefulWidget> createState() => _FramePageState();
}

class _FramePageState extends State<FramePage> {
  int _selectedIndex = 0;

  static  List<Widget> _widgetAddProOptions = <Widget>[
    HomePage(),
    ECommercePage(),
    MessagePage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage(
      body: _widgetAddProOptions[_selectedIndex],
      bottomNavigationBar: _createBottomNavigationBar(),
    );
  }

  @override
  initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
    // getAppConfig();
  }

  Widget _createBottomNavigationBar() {
    return _createBottomNavigationBarAddProduct();
  }

  Widget _createBottomNavigationBarAddProduct() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(
              "res/image/home/icon_home.png")),
          title: Text('首页'),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(
              "res/image/ecommerce/ecommerce.png")),
          title: Text('电商'),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(
              "res/image/message/message.png")),
          title: Text('消息'),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(
              "res/image/mine/mine.png")),
          title: Text('我的'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFFF9800),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }
}
