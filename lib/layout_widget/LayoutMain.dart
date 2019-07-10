import 'package:flutter/material.dart';
import 'RowWidget.dart';
import 'ColumnWidget.dart';
import 'FlexWidget.dart';
import 'WrapWidget.dart';
import 'FlowWidget.dart';
import 'StackWidget.dart';

class LayoutMain extends StatefulWidget {
  @override
  LayoutMainState createState() => new LayoutMainState();
}

class LayoutMainState extends State<LayoutMain> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("layout Widget"),
              FlatButton(
                child: Text("Row Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                    return new RowWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("Column Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ColumnWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Flex Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new FlewWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Wrap Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new WrapWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Flow Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new FlowWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Stack Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new StackWidget();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}
