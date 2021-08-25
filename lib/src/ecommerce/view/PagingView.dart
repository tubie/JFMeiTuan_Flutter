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
      padding: EdgeInsets.all(0),
      child: ListView(
        children: [
          Container(height: 100,child: Text('234567'),color: Colors.red,),
          Container(height: 100,child: Text('234567'),color: Colors.grey,),
          Container(height: 100,child: Text('234567'),color: Colors.orange,),
          Container(height: 100,child: Text('234567'),color: Colors.green,),
          Container(height: 100,child: Text('234567'),color: Colors.grey,),
          Container(height: 100,child: Text('234567'),color: Colors.white,),
        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
