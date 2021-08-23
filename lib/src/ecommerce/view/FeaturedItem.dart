import 'package:flutter/material.dart';

class FeaturedItem extends StatefulWidget {
  final String title;
  final String imagePath;

  FeaturedItem({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FeaturedItem();
}

class _FeaturedItem extends State<FeaturedItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
            child: Image(
                width: 60, height: 60, image: AssetImage(widget.imagePath)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.red, fontSize: 12),
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
