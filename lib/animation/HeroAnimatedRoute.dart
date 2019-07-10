import 'package:flutter/material.dart';

class HeroAnimatedRoute extends StatefulWidget {

  @override
  HeroAnimatedState createState() => new HeroAnimatedState();
}

class HeroAnimatedState extends State<HeroAnimatedRoute> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Button Widget"),
              HeroAnimationRoute(),
            ]),
      ),
    );
  }
}

// 路由A
class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: InkWell(
        child: Hero(
          tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
          child: ClipOval(
            child: Image.asset("./assets/images/avatar.png",
              width: 50.0,
            ),
          ),
        ),
        onTap: () {
          //打开B路由
          Navigator.push(context, PageRouteBuilder(
              pageBuilder: (BuildContext context, Animation animation,
                  Animation secondaryAnimation) {
                return new FadeTransition(
                  opacity: animation,
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("原图"),
                    ),
                    body: HeroAnimationRouteB(),
                  ),
                );
              })
          );
        },
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("./assets/images/avatar.png"),
      ),
    );
  }
}

