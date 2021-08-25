import 'package:flutter/material.dart';
import 'package:meituanflutter/src/ecommerce/view/FeaturedItem.dart';
import 'package:meituanflutter/src/ecommerce/view/PagingView.dart';

class PagingWidget extends StatefulWidget {
  PagingWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PagingWidget();
}

class _PagingWidget extends State<PagingWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            PagingView(
              title: '吃货必点',
              imagePath: 'res/image/ecommerce/icon_eat.png',
            ),
            PagingView(
              title: '吃货必点',
              imagePath: 'res/image/ecommerce/icon_eat.png',
            ),
            PagingView(
              title: '吃货必点',
              imagePath: 'res/image/ecommerce/icon_eat.png',
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          toolbarHeight:50.0,
          bottom: TabBar(
            isScrollable: true,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: Colors.white54,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  text: '电影',
                ),
                Tab(
                  text: '读书',
                ),
                Tab(
                  text: '新闻',
                ),

              ]),
        )
    );
  }

  @override
  initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    ///页面销毁时，销毁控制器
    _tabController.dispose();
    super.dispose();
  }
}
