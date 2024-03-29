import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatelessWidget {

  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox Widget"),
      ),
      body:  DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
              borderRadius: BorderRadius.circular(3.0), //3像素圆角
              boxShadow: [ //阴影
                BoxShadow(
                    color:Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0
                )
              ]
          ),
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
            child: Text("Login", style: TextStyle(color: Colors.white),),
          )
      ),
    );
  }
}
