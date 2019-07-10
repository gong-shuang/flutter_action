import 'package:flutter/material.dart';
import 'ScaleAnimationRoute.dart';
import 'AnimatedWidgetRoute.dart';
import 'AnimatedBuilderRoute.dart';
import 'HeroAnimatedRoute.dart';
import 'StaggerDemo.dart';


class AnimationMain extends StatefulWidget {

  @override
  AnimationMainState createState() => new AnimationMainState();
}

class AnimationMainState extends State<AnimationMain> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Animation"),
              FlatButton(
                child: Text("Scale Animation Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new ScaleAnimationRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Animation Widget Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new AnimatedWidgetRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Animation Builder Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new AnimatedBuilderRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Hero Animated Route"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new HeroAnimatedRoute();
                      }));
                },
              ),
              FlatButton(
                child: Text("Stagger Demo"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  Navigator.push(context,
                      // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                      // 实现与平台页面切换动画风格一致的路由切换动画
                      new MaterialPageRoute(builder: (context) {
                        return new StaggerDemo();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}