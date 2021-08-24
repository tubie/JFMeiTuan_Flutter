import 'package:flutter/material.dart';
import 'package:meituanflutter/src/ecommerce/view/FeaturedItem.dart';

class FeaturedWidget extends StatefulWidget {
  FeaturedWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FeaturedWidget();
}

class _FeaturedWidget extends State<FeaturedWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
            color: Colors.orange,
            child: Text('精选'),
            alignment: Alignment.centerLeft,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',
                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
                FeaturedItem(
                  name: '吃货必点',
                  price: '9.9',

                  imagePath: 'res/image/ecommerce/icon_eat.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
