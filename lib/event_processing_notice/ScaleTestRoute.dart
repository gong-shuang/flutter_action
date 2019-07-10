import 'package:flutter/material.dart';

class ScaleTestRoute extends StatefulWidget {
  @override
  _ScaleTestRouteState createState() => new _ScaleTestRouteState();
}

class _ScaleTestRouteState extends State<ScaleTestRoute> {
  double _width = 200.0; //通过修改图片宽度来达到缩放效果

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scale Test"),
      ),
      body: Center(
        child: GestureDetector(
          //指定宽度，高度自适应
          child: Image.asset("./assets/images/avatar.png", width: _width),
          onScaleUpdate: (ScaleUpdateDetails details) {
            setState(() {
              //缩放倍数在0.8到10倍之间
              _width=200*details.scale.clamp(.8, 10.0);
            });
          },
        ),
      ),
    );

  }
}
