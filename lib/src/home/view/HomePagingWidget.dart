import 'package:flutter/material.dart';
import 'package:meituanflutter/src/ecommerce/view/FeaturedWidget.dart';
import 'package:meituanflutter/src/ecommerce/view/PagingView.dart';
import 'package:meituanflutter/src/home/view/HomeClassificationWidget.dart';
import 'package:meituanflutter/src/home/view/HomeToolWidget.dart';

class HomePagingWidget extends StatefulWidget {
  HomePagingWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePagingWidget();
}

class _HomePagingWidget extends State<HomePagingWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            PagingView(),
            PagingView(),
            PagingView(),
          ],
        ),
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 400,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    //头部整个背景颜色
                    height: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
//                        color: Colors.white,
                          height: 100,
                          child: HomeToolWidget(),
                        ),
                        Container(
                          height: 300,
//                        color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 50),
                            child: HomeClassificationWidget(),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size(300,50),
                  child: Material(
                    color: Colors.orange,
                    child: TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        tabs: [
                          Tab(text: "热卖"),
                          Tab(text: "生鲜"),
                          Tab(text: "食品"),
                        ]),
                  ),
                )),
          ];
        },
      ),
    );
  }

  @override
  initState() {
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
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
