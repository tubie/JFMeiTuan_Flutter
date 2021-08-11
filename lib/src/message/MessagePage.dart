import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';

class MessagePage extends StatefulWidget {
  MessagePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage();
  }

  @override
  initState() {
    super.initState();
  }
}
