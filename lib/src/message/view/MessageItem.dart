import 'package:flutter/material.dart';

class MessageItem extends StatefulWidget {
  final String name;
  final String price;
  final String imagePath;

  MessageItem({
    Key key,
    this.name,
    this.imagePath, this.price,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MessageItem();
}

class _MessageItem extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10,left: 10,right: 10,),
      child: Container(
        color: Colors.white,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              child: Image(
                  width: 15, height: 15, image: AssetImage(widget.imagePath)),
            ),

            Text('fasdfasdfasdfas')
          ],),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10,left: 0),
            child: Text(
              widget.name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Text(
            widget.price,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
