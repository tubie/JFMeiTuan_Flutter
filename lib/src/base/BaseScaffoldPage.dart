import 'package:flutter/material.dart';

class BaseScaffoldPage extends StatefulWidget {
  BaseScaffoldPage({
    Key key,
    this.titleBar,
    this.body,
    this.bottomNavigationBar,
  }) : super(key: key);

  final PreferredSizeWidget titleBar;
  final Widget body;
  final BottomNavigationBar bottomNavigationBar;

  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<BaseScaffoldPage> {
  @override
  Widget build(BuildContext context) {
    return _createPage();
  }

  Widget _createPage() {
    return _pageContent();
  }

  Widget _pageContent() {
    return Scaffold(
      appBar: widget.titleBar,
      body: _getBody(),
      backgroundColor: Colors.white,
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }

  Widget _getBody() {
    return widget.body;
  }
}
