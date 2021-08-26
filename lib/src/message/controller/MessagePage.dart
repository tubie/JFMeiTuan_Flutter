import 'package:flutter/material.dart';
import 'package:meituanflutter/src/base/BaseScaffoldPage.dart';
import 'package:meituanflutter/src/message/view/MessageItem.dart';

class MessagePage extends StatefulWidget {
  MessagePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldPage(
      titleBar: _createTitleBar(),
      body: Container(
        color: Colors.grey[100],
        child: ListView(children: [
        MessageItem(
          name: '吃货必点附近奥施康定放哪里斯柯达妇女节阿里斯顿放哪里水电费那是考虑到发是你的房间卡号开始',
          price: '发的范德萨发噶三大发送到发送到发送到发送到发送到发送到法司法所>',
          imagePath: 'res/image/ecommerce/icon_eat.png',
        ),

          MessageItem(
            name: '吃货必点附近奥施康定放哪里斯柯达妇女节阿里斯顿放哪里水电费那是考虑到发是你的房间卡号开始',
            price: '发的范德萨发噶三大发送到发送到发送到发送到发送到发送到法司法所>',
            imagePath: 'res/image/ecommerce/icon_eat.png',
          ),
          MessageItem(
            name: '吃货必点附近奥施康定放哪里斯柯达妇女节阿里斯顿放哪里水电费那是考虑到发是你的房间卡号开始',
            price: '发的范德萨发噶三大发送到发送到发送到发送到发送到发送到法司法所>',
            imagePath: 'res/image/ecommerce/icon_eat.png',
          ),
          MessageItem(
            name: '吃货必点附近奥施康定放哪里斯柯达妇女节阿里斯顿放哪里水电费那是考虑到发是你的房间卡号开始',
            price: '发的范德萨发噶三大发送到发送到发送到发送到发送到发送到法司法所>',
            imagePath: 'res/image/ecommerce/icon_eat.png',
          ),

          MessageItem(
            name: '吃货必点附近奥施康定放哪里斯柯达妇女节阿里斯顿放哪里水电费那是考虑到发是你的房间卡号开始',
            price: '发的范德萨发噶三大发送到发送到发送到发送到发送到发送到法司法所>',
            imagePath: 'res/image/ecommerce/icon_eat.png',
          ),

          MessageItem(
            name: '吃货必点附近奥施康定放哪里斯柯达妇女节阿里斯顿放哪里水电费那是考虑到发是你的房间卡号开始',
            price: '发的范德萨发噶三大发送到发送到发送到发送到发送到发送到法司法所>',
            imagePath: 'res/image/ecommerce/icon_eat.png',
          ),

      ],),),
    );
  }

  PreferredSizeWidget _createTitleBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.orange,
      title: Text('消息'),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
