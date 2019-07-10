import 'package:flutter/material.dart';
import 'PaddingWidget.dart';
import 'ConstrainedBoxWidget.dart';
import 'DecoratedBoxWidget.dart';
import 'TransformWidget.dart';
import 'ContainerRoute.dart';
import 'ScaffoldRoute.dart';

class ContainerMain extends StatefulWidget {
  @override
  ContainerMainState createState() => new ContainerMainState();
}

class ContainerMainState extends State<ContainerMain> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("container Widget"),
              FlatButton(
                child: Text("Padding Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new PaddingWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Constrained Box Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ConstrainedBoxWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("DecoratedBox Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new DecoratedBoxWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Transform Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new TransformWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Container Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ContainerRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Scaffold TabBar At the bottom of the navigation"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ScaffoldRoute();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}
