import 'package:flutter/material.dart';
import 'OtherNewRoute.dart';
import 'package:english_words/english_words.dart';

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
      //注册路由表
      routes: {
        "other_new_page": (context) => OtherNewRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// MyHomePage 是应用的首页，它继承自StatefulWidget类，表示它是一个有状态的widget（Stateful widget）
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // setState方法的作用是通知Flutter框架，有状态发生了改变，Flutter框架收到通知后，
    // 会执行build方法来根据新的状态重新构建界面， Flutter 对此方法做了优化，
    // 使重新执行变的很快，所以你可以重新构建任何需要更新的东西，而无需分别去修改各个widget
    setState(() {
      _counter++;
    });
  }

  // 构建UI界面，为什么build()方法在State（而不是StatefulWidget）中 ？这主要是为了开发的灵活性。
  // 如果将build()方法在StatefulWidget中则会有两个问题：见：https://book.flutterchina.club/chapter2/first_flutter_app.html
  // （1）状态访问不便
  // （2）继承StatefulWidget不便，
  @override
  Widget build(BuildContext context) {

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
            FlatButton(
              child: Text("open other new route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "other_new_page");
              },
            ),
            RandomWordsWidget(),
          ],
        ),
      ),
      // floatingActionButton是页面右下角的带“➕”的悬浮按钮，
      // 它的onPressed属性接受一个回调函数，代表它被点击后的处理器，本例中直接将_incrementCounter作为其处理函数。
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

