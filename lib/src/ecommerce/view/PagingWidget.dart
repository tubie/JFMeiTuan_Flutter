import 'package:flutter/material.dart';
import 'package:meituanflutter/src/ecommerce/view/ClassificationWidget.dart';
import 'package:meituanflutter/src/ecommerce/view/FeaturedWidget.dart';
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
            PagingView(),
            PagingView(),
            PagingView(),
            PagingView(),
            PagingView(),
            PagingView(),
            PagingView(),
            PagingView(),
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
              expandedHeight: 300,
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
                        child: ClassificationWidget(),
                      ),
                      Container(
                        height: 200,
//                        color: Colors.white,

                        child: FeaturedWidget(),
                      ),
                    ],
                  ),
                ),
              ),
              bottom:
                  PreferredSize(
                    preferredSize: Size.fromHeight(48),
                    child: Material(
                      color: Colors.orange,
                      child: TabBar(isScrollable: true, controller: _tabController, tabs: [
                        Tab(text: "热卖"),
                        Tab(text: "生鲜"),
                        Tab(text: "食品"),
                        Tab(text: "百货"),
                        Tab(text: "数码"),
                        Tab(text: "美妆"),
                        Tab(text: "服饰"),
                        Tab(text: "运动"),
                        Tab(text: "母婴"),
                        Tab(text: "宠物"),
                        Tab(text: "ccc"),
                        Tab(text: "ccc"),
                        Tab(text: "ccc"),
                        Tab(text: "ccc"),
                      ]),
                    ),
                  )
            ),
          ];
        },
      ),
    );
  }

  @override
  initState() {
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    _tabController = TabController(
      length: 14,
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
