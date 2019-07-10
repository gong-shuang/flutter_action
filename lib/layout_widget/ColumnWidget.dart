import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {

  @override
  ColumnWidgetState createState() => new ColumnWidgetState();
}

class ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Widget"),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                      children: <Widget>[
                        Text("hello world "),
                        Text("I am Jack "),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
