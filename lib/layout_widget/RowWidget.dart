import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {

  @override
  RowWidgetState createState() => new RowWidgetState();
}

class RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widget"),
      ),
      body: Center(
        child: Column(
          //测试Row对齐方式，排除Column默认居中对齐的干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(" hello world, "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text(" Hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                Text(" I am Jack "),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
