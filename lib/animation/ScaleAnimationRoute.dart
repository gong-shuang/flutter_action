import 'package:flutter/material.dart';


class ScaleAnimationRoute extends StatefulWidget {
  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>  with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  //实现一个图片逐渐放大的示例
//  initState() {
//    super.initState();
//    controller = new AnimationController(
//        duration: const Duration(seconds: 3), vsync: this);
//    //图片宽高从0变到300
//    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
//      ..addListener(() {
//        setState(()=>{ print("111") });
//      });
//    //启动动画(正向执行)
//    controller.forward();
//  }

  // 实现一个类似于弹簧效果的动画过程
//  initState() {
//    super.initState();
//    controller = new AnimationController(
//        duration: const Duration(seconds: 3), vsync: this);
//    //使用弹性曲线
//    animation=CurvedAnimation(parent: controller, curve: Curves.bounceIn);
//    //图片宽高从0变到300
//    animation = new Tween(begin: 0.0, end: 300.0).animate(animation)
//      ..addListener(() {
//        setState(() {
//        });
//      });
//    //启动动画
//    controller.forward();
//  }

  //将图片放大的示例改为先放大再缩小再放大……这样的循环动画。
  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
      setState(()=>{});
    });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //动画执行结束时反向执行动画
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
    });

    //启动动画（正向）
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scale animation route"),
      ),
      body: new Center(
        child: Image.asset("./assets/images/avatar.png",
            width: animation.value,
            height: animation.value
        ),
      ),
    );
  }

  @override
  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}