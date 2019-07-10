import 'package:flutter/material.dart';
import './GradientButtonRoute.dart';
import 'TurnBoxRoute.dart';
import 'CustomPaintRoute.dart';
import 'GradientCircularProgressRoute.dart';


class CustomMain extends StatefulWidget {

  @override
  CustomMainState createState() => new CustomMainState();
}

class CustomMainState extends State<CustomMain> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Custom Widget"),
              FlatButton(
                child: Text("Gradient Button"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GradientButtonRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("TurnBox Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new TurnBoxRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Custom Paint Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new CustomPaintRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Gradient Circular Progress Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GradientCircularProgressRoute();
                      }));
                },
              ),

            ]),
      ),
    );
  }
}