import 'package:flutter/material.dart';
import 'package:meituanflutter/src/ecommerce/view/ClassificationItem.dart';

class HomeTopClassificationWidget extends StatefulWidget {
  HomeTopClassificationWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeTopClassificationWidget();
}

class _HomeTopClassificationWidget extends State<HomeTopClassificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange ,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClassificationItem(
              title: '吃货必点',
              imagePath: 'res/image/ecommerce/icon_eat.png',
            ),
            ClassificationItem(
              title: '时令果蔬',
              imagePath: 'res/image/ecommerce/icon_fruit.png',
            ),
            ClassificationItem(
              title: '精选365',
              imagePath: 'res/image/ecommerce/icon_hotel.png',
            ),
            ClassificationItem(
              title: '熊猫超市',
              imagePath: 'res/image/ecommerce/icon_market.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
