import 'package:flutter/material.dart';
import 'package:meituanflutter/src/ecommerce/view/ClassificationItem.dart';

class ClassificationWidget extends StatefulWidget {
  ClassificationWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ClassificationWidget();
}

class _ClassificationWidget extends State<ClassificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ClassificationItem(title: '吃货必点',imagePath: 'res/image/ecommerce/icon_eat.png',),
          ClassificationItem(title: '时令果蔬',imagePath: 'res/image/ecommerce/icon_fruit.png',),
          ClassificationItem(title: '精选365',imagePath: 'res/image/ecommerce/icon_hotel.png',),
          ClassificationItem(title: '熊猫超市',imagePath: 'res/image/ecommerce/icon_market.png',),
          ClassificationItem(title: '省钱日历',imagePath: 'res/image/ecommerce/calendar.png',),
          ClassificationItem(title: '热卖排行榜',imagePath: 'res/image/ecommerce/icon_eat.png',),
          ClassificationItem(title: '分类',imagePath: 'res/image/ecommerce/icon_eat.png',),


        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
