import 'package:flutter/material.dart';
import 'TapboxA.dart';
import 'ParentWidget.dart';
import 'ParentWidgetC.dart';

class StateManageWidget extends StatefulWidget {
  StateManageWidget({Key key}) : super(key: key);

  @override
  ManageWidgetState createState() => new ManageWidgetState();
}

class ManageWidgetState extends State<StateManageWidget> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("ccccccc"),
              Text("xxxxcccx"),
              FlatButton(
                child: Text("TapboxA"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new TapboxA();
                      }));
                },
              ),
              FlatButton(
                child: Text("ParentWidgetState"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ParentWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("ParentWidgetC"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ParentWidgetC();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}