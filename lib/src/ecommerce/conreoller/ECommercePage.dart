import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';
import 'package:meituanflutter/src/ecommerce/view/ClassificationWidget.dart';

class ECommercePage extends StatefulWidget {
  ECommercePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _ECommercePageState();
}

class _ECommercePageState extends State<ECommercePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage(
      titleBar: _createTitleBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ClassificationWidget(),),
        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }

  PreferredSizeWidget _createTitleBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.amber,
      title: Text('fasfas'),
    );
  }
}
