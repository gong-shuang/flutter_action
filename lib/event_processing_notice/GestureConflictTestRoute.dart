import 'package:flutter/material.dart';

class GestureConflictTestRoute extends StatefulWidget {
  @override
  GestureConflictTestRouteState createState() =>
      new GestureConflictTestRouteState();
}


class GestureConflictTestRouteState extends State<GestureConflictTestRoute> {
  double _left = 0.0;
  double _leftB = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Both Direction"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text("A")), //要拖动和点击的widget
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _left += details.delta.dx;
                });
              },
              onHorizontalDragEnd: (details){
                print("onHorizontalDragEnd");
              },
              onTapDown: (details){
                print("down");
              },
              onTapUp: (details){
                print("up");
              },
            ),
          ),
          Positioned(
            top:80.0,
            left: _leftB,
            child: Listener(
              onPointerDown: (details) {
                print("down");
              },
              onPointerUp: (details) {
                //会触发
                print("up");
              },
              child: GestureDetector(
                child: CircleAvatar(child: Text("B")),
                onHorizontalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _leftB += details.delta.dx;
                  });
                },
                onHorizontalDragEnd: (details) {
                  print("onHorizontalDragEnd");
                },
              ),
            ),
          )
        ],
      ),
    );

  }
}
