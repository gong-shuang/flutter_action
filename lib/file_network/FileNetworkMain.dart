import 'package:flutter/material.dart';
import 'FileOperationRoute.dart';
import 'HttpTestRoute.dart';
import 'DioPackageRoute.dart';
import 'HttpBlockRoute.dart';
import 'WebSocketRoute.dart';
import 'SocketAPIRoute.dart';


class FileNetworkMain extends StatefulWidget {

  @override
  FileNetworkState createState() => new FileNetworkState();
}

class FileNetworkState extends State<FileNetworkMain> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("File and Network"),
              FlatButton(
                child: Text("File Operation Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new FileOperationRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Http Test Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new HttpTestRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Dio Demo"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new DioPackageRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Http Block Demo"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new HttpBlockRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("WebSocket Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new WebSocketRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("SocketAPI Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new SocketAPIRoute();
                      }));
                },
              ),

            ]),
      ),
    );
  }
}