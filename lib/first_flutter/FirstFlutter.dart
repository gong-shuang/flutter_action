import 'package:flutter/material.dart';
import 'NewRoute.dart';
import 'DefaultFlutter.dart';

class FirstFlutter extends StatefulWidget {
  FirstFlutter({Key key}) : super(key: key);

  @override
  FirstFlutterState createState() => new FirstFlutterState();
}

class FirstFlutterState extends State<FirstFlutter> {

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
                child: Text("default Flutter"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new MyApp();
                      }));
                },
              ),
              FlatButton(
                child: Text("open new route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new NewRoute();
                      }));
                },
              ),

            ]),
      ),
    );
  }
}
