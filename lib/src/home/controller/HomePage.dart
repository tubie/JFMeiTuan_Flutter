import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';
import 'package:meituanflutter/src/ecommerce/view/PagingWidget.dart';
import 'package:meituanflutter/src/home/view/HomePagingWidget.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage(
      titleBar: _createTitleBar(),
      body: HomePagingWidget(),
    );
  }

  @override
  initState() {
    super.initState();
  }



  PreferredSizeWidget _createTitleBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.orange,
      title: Text('首页'),
    );
  }
}
