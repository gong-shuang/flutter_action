// 此行代码作用是导入了Material UI组件库。Material是一种标准的移动端和web端的视觉设计语言，
// Flutter默认提供了一套丰富的Material风格的UI组件。
import 'package:flutter/material.dart';

import './base_widget/BaseMain.dart';
import './first_flutter/FirstFlutter.dart';
import './layout_widget/LayoutMain.dart';
import './container_widget/ContainerMain.dart';
import './scrollable_widget/ScrollableMain.dart';
import './functional_widget/FunctionalMain.dart';
import './event_processing_notice/EventMain.dart';
import './animation/AnimationMain.dart';
import './custom_widget/CustomMain.dart';
import './file_network/FileNetworkMain.dart';

// runApp 方法，它的功能是启动Flutter应用，它接受一个Widget参数.
void main() => runApp(MyApp());


// MyApp 是一个 Flutter 应用。
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  // 提供一个build()方法来描述如何构建UI界面（通常是通过组合、拼装其它基础widget）。
  @override
  Widget build(BuildContext context) {
    // 是Material库中提供的Flutter APP框架，通过它可以设置应用的名称、主题、语言、首页及路由列表等。
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// MyHomePage 是应用的首页，它继承自StatefulWidget类，表示它是一个有状态的widget（Stateful widget）
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // 构建UI界面，为什么build()方法在State（而不是StatefulWidget）中 ？这主要是为了开发的灵活性。
  // 如果将build()方法在StatefulWidget中则会有两个问题：见：https://book.flutterchina.club/chapter2/first_flutter_app.html
  // （1）状态访问不便
  // （2）继承StatefulWidget不便，
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // Scaffold 是Material库中提供的页面脚手架，它包含导航栏和Body以及FloatingActionButton。
    // 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。
    // 本书后面示例中，路由默认都是通过Scaffold创建。
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      // body的widget树中包含了一个Center widget，Center 可以将其子widget树对齐到屏幕中心，
      // Center 子widget是一个Column widget，Column的作用是将其所有子widget沿屏幕垂直方向依次排列，
      // 此例中Column包含两个 Text子widget，第一个Text widget显示固定文本 “You have pushed the
      // button this many times:”，第二个Text widget显示_counter状态的数值
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("这个app是根据《Flutter实战》的编写出来！"),
            FlatButton(
              child: Text("first flutter"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new FirstFlutter();
                    }));
              },
            ),
            FlatButton(
              child: Text("base widget"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new BaseMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("layout widgets"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new LayoutMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("layout widgets"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new LayoutMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("Container widgets"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new ContainerMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("Scrollable widgets"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new ScrollableMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("Functional widgets"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new FunctionalMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("Event Processing Notice"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new EventMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("Animation"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new AnimationMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("Custom Widget"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new CustomMain();
                    }));
              },
            ),
            FlatButton(
              child: Text("File and Network"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    // MaterialPageRoute 是Material组件库的一个Widget，它可以针对不同平台，
                    // 实现与平台页面切换动画风格一致的路由切换动画
                    new MaterialPageRoute(builder: (context) {
                      return new FileNetworkMain();
                    }));
              },
            ),
          ],
        ),
      ),
    );
  }
}


