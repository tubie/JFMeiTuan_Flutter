import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';
import 'package:meituanflutter/src/mine/view/MineHeaderView.dart';
import 'package:meituanflutter/src/mine/view/MineToolWidget.dart';

class MinePage extends StatefulWidget {
  MinePage({
    Key key,
  }) : super(key: key);


  @override
  State<StatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage(
      titleBar: _createTitleBar(),
      body: Container(
        height: 200,
        color: Colors.orange,
        child: Column(
        children: [
          MineHeaderView(imagePath: 'res/image/ecommerce/icon_eat.png',title: '1234567890',),
          Stack(
            children: [

            MineToolWidget(),

            Positioned(top: 55, left: 20, right: 20, child: Container(height: 100, color: Colors.red,))
          ],)
        ],
      ),),
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
      title: Text('我的'),
    );
  }
}
