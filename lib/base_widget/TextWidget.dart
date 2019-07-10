import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  TextWidget({Key key}) : super(key: key);

  @override
  TextWidgetState createState() => new TextWidgetState();
}

// 声明文本样式
const textStyle = const TextStyle(
  fontFamily: 'Raleway',
);

// 使用文本样式
var buttonText = const Text(
  "Use the font for this text",
  style: textStyle,
);

class TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("base Widget"),
              Text(
                "Hello world",
                textAlign: TextAlign.center,
              ),
              Text(
                "Hello world! " * 4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "Hello world",
                textScaleFactor: 1.5,
              ),
              Text(
                "Hello world",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.2,
                    fontFamily: "Courier",
                    background: new Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              Text.rich(TextSpan(
                  children: [
                    TextSpan(
                        text: "Home: "
                    ),
                    TextSpan(
                        text: "https://flutterchina.club",
                        style: TextStyle(
                            color: Colors.blue
                        ),
                     //   recognizer: _tapRecognizer
                    ),
                  ]
              )),
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color:Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text("I am Jack",
                  style: TextStyle(
                      inherit: false, //2.不继承默认样式
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
              buttonText,
            ]),
      ),
    );
  }
}
