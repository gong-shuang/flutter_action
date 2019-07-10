import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatefulWidget {
  @override
  _InputTextFieldState createState() => new _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextFieldWidget> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  //定义一个controller
  TextEditingController _unameController = new TextEditingController();

  //定义一个controller
  TextEditingController _selectionController = new TextEditingController();

  @override
  void initState() {
    //监听输入文本改变
    _unameController.addListener(() {
      print("listener:");
      print(_unameController.text);
    });

    // 设置默认值，并从第三个字符开始选中后面的字符
    _selectionController.text = "hello world!";
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);

    // 监听焦点变化
    focusNode1.addListener(() {
      print(focusNode1.hasFocus.toString() + "ccccccc");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("_InputTextFieldState build");

    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Theme(
                  data: Theme.of(context).copyWith(
                      hintColor: Colors.grey[200], //定义下划线颜色
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(color: Colors.grey),
                          //定义label字体样式
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 14.0) //定义提示文本样式
                          )),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: "用户名",
                            hintText: "用户名或邮箱",
                            prefixIcon: Icon(Icons.person)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: "密码",
                            hintText: "您的登录密码",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13.0)),
                        obscureText: true,
                      )
                    ],
                  )),
              Container(
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "电子邮件地址",
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none //隐藏下划线
                        )),
                decoration: BoxDecoration(
                    // 下滑线浅灰色，宽度1像素
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey[200], width: 1.0))),
              ),
              Text("Input and Form Widget"),
              TextField(
                autofocus: true,
//                controller: _unameController, //设置controller
                controller: _selectionController,
                //设置controller
                onChanged: (v) {
                  print("onChange: $v");
                },
                focusNode: focusNode1,
                //关联focusNode1
                decoration: InputDecoration(labelText: "input1"),
              ),
              TextField(
                focusNode: focusNode2, //关联focusNode2
                decoration: InputDecoration(labelText: "input2"),
              ),
              Builder(
                builder: (ctx) {
                  return Column(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("移动焦点"),
                        onPressed: () {
                          //将焦点从第一个TextField移到第二个TextField
                          // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                          // 这是第二种写法
                          if (null == focusScopeNode) {
                            focusScopeNode = FocusScope.of(context);
                          }
                          focusScopeNode.requestFocus(focusNode2);
                        },
                      ),
                      RaisedButton(
                        child: Text("隐藏键盘"),
                        onPressed: () {
                          // 当所有编辑框都失去焦点时键盘就会收起
                          focusNode1.unfocus();
                          focusNode2.unfocus();
                        },
                      ),
                    ],
                  );
                },
              ),
            ]),
      ),
    );
  }
}
