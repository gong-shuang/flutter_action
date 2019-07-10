import 'package:flutter/material.dart';
import 'state_manage/StateManage.dart';
import 'StateLife.dart';
import 'TextWidget.dart';
import 'ButtonWidget.dart';
import 'ImageWidget.dart';
import 'SwitchAndCheckBoxTestRoute.dart';
import 'InputTextFieldWidget.dart';
import 'FormTableWidget.dart';



class BaseMain extends StatefulWidget {
  BaseMain({Key key}) : super(key: key);

  @override
  ManageWidgetState createState() => new ManageWidgetState();
}

class ManageWidgetState extends State<BaseMain> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("base Widget"),
              FlatButton(
                child: Text("Widget life cycle"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new CounterWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("base Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new StateManageWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Text Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new TextWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Button Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ButtonWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Image Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ImageWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Switch and Check Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new SwitchAndCheckBoxTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Input TextField Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new InputTextFieldWidget();
                      }));
                },
              ),
              FlatButton(
                child: Text("Form Table Widget"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new FormTableWidget();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}