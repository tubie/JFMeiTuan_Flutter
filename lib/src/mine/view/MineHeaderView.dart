import 'package:flutter/material.dart';

class MineHeaderView extends StatefulWidget {
  final String title;
  final String imagePath;

  MineHeaderView({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MineHeaderView();
}

class _MineHeaderView extends State<MineHeaderView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child:
              Image(width: 48, height: 48, image: AssetImage(widget.imagePath)),
        ),
        Text(widget.title)
      ],
    );
  }

  @override
  initState() {
    super.initState();
  }
}
