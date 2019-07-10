import 'package:flutter/material.dart';

class AnimatedBuilderRoute extends StatefulWidget {
  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}

class _ScaleAnimationRouteState extends State<AnimatedBuilderRoute>
    with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    //启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animation builder route"),
      ),
      body:GrowTransition(
        child: Image.asset("./assets/images/avatar.png"),
        animation: animation,
      ),
//      AnimatedBuilder(
//        animation: animation,
//        child: Image.asset("./assets/images/avatar.png"),
//        builder: (BuildContext ctx, Widget child) {
//          return new Center(
//            child: Container(
//              height: animation.value,
//              width: animation.value,
//              child: child,
//            ),
//          );
//        },
//      ),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return new Container(
                height: animation.value,
                width: animation.value,
                child: child
            );
          },
          child: child
      ),
    );
  }
}