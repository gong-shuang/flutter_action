import 'package:flutter/material.dart';
import 'WillPopScopeTestRoute.dart';
import 'ThemeTestRoute.dart';
import 'InheritedWidgetTestRoute.dart';


class FunctionalMain extends StatefulWidget {

  @override
  ManageWidgetState createState() => new ManageWidgetState();
}

class ManageWidgetState extends State<FunctionalMain> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Functional Widget"),
              FlatButton(
                child: Text("WillPopScope TestRoute"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new WillPopScopeTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("InheritedWidget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new InheritedWidgetTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("ThemeTestRoute"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ThemeTestRoute();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}