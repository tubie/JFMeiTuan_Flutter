import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';

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
      body: Container(),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
