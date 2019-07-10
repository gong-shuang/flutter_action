import 'package:flutter/material.dart';
import 'PointerEvent.dart';
import 'GestureDetectorTestRoute.dart';
import 'GestureDrag.dart';
import 'GestureDragVertical.dart';
import 'ScaleTestRoute.dart';
import 'GestureRecognizerTestRoute.dart';
import 'BothDirectionTestRoute.dart';
import 'GestureConflictTestRoute.dart';
import 'NotificationRoute.dart';


class EventMain extends StatefulWidget {
  @override
  EventMainState createState() => new EventMainState();
}

class EventMainState extends State<EventMain> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Event processing and notice"),
              FlatButton(
                child: Text("Pointer Event Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new PointerEventRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Gesture Detector Test Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GestureDetectorTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Gesture Drag Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GestureDrag();
                      }));
                },
              ),
              FlatButton(
                child: Text("Gesture Drag Vertical Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GestureDragVertical();
                      }));
                },
              ),
              FlatButton(
                child: Text("Scale Test Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ScaleTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Gesture Recognizer Test Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GestureRecognizerTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Both Direction Test Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new BothDirectionTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Gesture Conflict Test Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new GestureConflictTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Notification Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new NotificationRoute();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}
