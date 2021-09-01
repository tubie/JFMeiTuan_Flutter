import 'package:flutter/material.dart';

class PagingView extends StatefulWidget {
  final String title;
  final String imagePath;

  PagingView({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PagingView();
}

class _PagingView extends State<PagingView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5,right: 5,top: 5),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //列数
          mainAxisSpacing: 5.0, //行间距
          crossAxisSpacing: 5.0, //列间距
          childAspectRatio: 0.8, //宽高比 宽相对于高的倍数
        ),
        children: [
          Container(height: 100,child: Text('1'),color: Colors.red,),
          Container(height: 100,child: Text('2'),color: Colors.grey,),
          Container(height: 100,child: Text('3'),color: Colors.orange,),
          Container(height: 100,child: Text('4'),color: Colors.green,),
          Container(height: 100,child: Text('5'),color: Colors.grey,),
          Container(height: 100,child: Text('6'),color: Colors.white,),
          Container(height: 100,child: Text('7'),color: Colors.red,),
          Container(height: 100,child: Text('8'),color: Colors.green,),

        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
