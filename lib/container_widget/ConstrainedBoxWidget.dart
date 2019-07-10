import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {

  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox Widget"),
        actions: <Widget>[
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            ),
          )
        ],
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: double.infinity, //宽度尽可能大
            minHeight: 80.0 //最小高度为50像素
        ),
        child: Container(
            height: 5.0,
            child: redBox
        ),
      ),
    );
  }
}
