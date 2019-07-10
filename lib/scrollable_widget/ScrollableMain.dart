import 'package:flutter/material.dart';
import 'SingleChildScrollViewTestRoute.dart';
import 'ListViewWidget.dart';
import 'GridViewWidget.dart';
import 'CustomScrollViewWidget.dart';
import 'ScrollControllerTestRoute.dart';
import 'ScrollNotificationTestRoute.dart';


class ScrollableMain extends StatefulWidget {
  @override
  ScrollableMainState createState() => new ScrollableMainState();
}

class ScrollableMainState extends State<ScrollableMain> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Scrollable Widget"),
              FlatButton(
                child: Text("SingleChildScrollView Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new SingleChildScrollViewTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("ListView Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ListViewWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("GridView Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GridViewWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("CustomScrollView Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new CustomScrollViewWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("ScrollControllerTestRoute"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ScrollControllerTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("ScrollNotificationTestRoute"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ScrollNotificationTestRoute();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}
