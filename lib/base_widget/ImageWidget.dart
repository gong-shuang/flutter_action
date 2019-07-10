import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  ImageWidget({Key key}) : super(key: key);

  @override
  ImageWidgetState createState() => new ImageWidgetState();
}

class ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    print("build");

    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Image Widget"),
              Image(image: AssetImage("assets/images/plane.png"), width: 100.0),
              Image(
                image: NetworkImage(
                    "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                width: 100.0,
              ),
              Image(
                image: AssetImage("assets/images/plane.png"),
                width: 100.0,
                color: Colors.blue,
                colorBlendMode: BlendMode.difference,
              ),
              Image(
                image: AssetImage("assets/images/plane.png"),
                width: 100.0,
                height: 200.0,
                repeat: ImageRepeat.repeatY,
              ),
              Text(
                icons,
                style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 24.0,
                    color: Colors.green),
              ),
              Icon(MyIcons.book,color: Colors.purple,),
              Icon(MyIcons.wechat,color: Colors.green,),
            ]),
      ),
    );
  }
}


class MyIcons{
  // book 图标
  static const IconData book = const IconData(
      0xe614,
      fontFamily: 'myIcon',
      matchTextDirection: true
  );
  // 微信图标
  static const IconData wechat = const IconData(
      0xec7d,
      fontFamily: 'myIcon',
      matchTextDirection: true
  );
}