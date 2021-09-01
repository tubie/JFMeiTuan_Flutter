import 'package:flutter/material.dart';

class HomeClassificationWidget extends StatefulWidget {

  HomeClassificationWidget({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeClassificationWidget();
}

class _HomeClassificationWidget extends State<HomeClassificationWidget> {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final width =size.width;
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
         Container(height: 250,width: width, color: Colors.white,
         child: GridView(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 5, //列数
             mainAxisSpacing: 2.0, //行间距
             crossAxisSpacing: 2.0, //列间距
             childAspectRatio: 1, //宽高比 宽相对于高的倍数
           ),
           children: [
             Container( child: Text('1'),color: Colors.red,),
             Container(child: Text('2'),color: Colors.grey,),
             Container( child: Text('3'),color: Colors.orange,),
             Container(child: Text('4'),color: Colors.green,),
             Container(child: Text('5'),color: Colors.grey,),
             Container(child: Text('6'),color: Colors.black,),
             Container(child: Text('7'),color: Colors.red,),
             Container(child: Text('8'),color: Colors.green,),
             Container( child: Text('9'),color: Colors.red,),
             Container(child: Text('10'),color: Colors.grey,),
             Container( child: Text('11'),color: Colors.orange,),
             Container(child: Text('12'),color: Colors.green,),
             Container(child: Text('13'),color: Colors.grey,),
             Container(child: Text('14'),color: Colors.green,),
             Container(child: Text('15'),color: Colors.grey,),

           ],
         ),),

          Container(height: 250,width: width, color: Colors.white,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, //列数
                mainAxisSpacing: 2.0, //行间距
                crossAxisSpacing: 2.0, //列间距
                childAspectRatio: 1, //宽高比 宽相对于高的倍数
              ),
              children: [
                Container( child: Text('1'),color: Colors.red,),
                Container(child: Text('2'),color: Colors.grey,),
                Container( child: Text('3'),color: Colors.orange,),
                Container(child: Text('4'),color: Colors.green,),
                Container(child: Text('5'),color: Colors.grey,),
                Container(child: Text('6'),color: Colors.black,),
                Container(child: Text('7'),color: Colors.red,),
                Container(child: Text('8'),color: Colors.green,),
                Container( child: Text('9'),color: Colors.red,),
                Container(child: Text('10'),color: Colors.grey,),
                Container( child: Text('11'),color: Colors.orange,),
                Container(child: Text('12'),color: Colors.green,),
                Container(child: Text('13'),color: Colors.grey,),
                Container(child: Text('14'),color: Colors.green,),
                Container(child: Text('15'),color: Colors.grey,),

              ],
            ),),
        ],
      ),
    );
  }

  @override
  initState() {
    super.initState();
  }
}
