import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';

class MinePage extends StatefulWidget {
  MinePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage();
  }

  @override
  initState() {
    super.initState();
  }
}
