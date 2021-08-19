import 'package:flutter/material.dart';

class ClassificationItem extends StatefulWidget {
  final String title;
  final String imagePath;

  ClassificationItem({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ClassificationItem();
}

class _ClassificationItem extends State<ClassificationItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10,bottom: 10, left: 10,right: 10),child: Image(
            width: 48,
              height: 48,
              image: AssetImage(widget.imagePath)),),
          Text(widget.title)
        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
