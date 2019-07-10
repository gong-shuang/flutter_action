import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SocketAPIRoute extends StatefulWidget {
  @override
  SocketAPIRouteState createState() => new SocketAPIRouteState();
}

class SocketAPIRouteState extends State<SocketAPIRoute> {
  bool _loading = false;
  String _text = "";

  Dio dio = new Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SocketAPI"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("获取百度首页"),
                  onPressed: _loading
                      ? null
                      : () async {
                    setState(() {
                      _loading = true;
                      _text = "正在请求...";
                    });
                    try {
                      _request();
                    } catch (e) {
                      _text = "请求失败：$e";
                    } finally {
                      setState(() {
                        _loading = false;
                      });
                    }
                  }),
              Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  child: Text(_text.replaceAll(new RegExp(r"\s"), "")))
            ],
          ),
        ),
      ),
    );
  }

  _request() async{
    //建立连接
    var socket=await Socket.connect("baidu.com", 80);
    //根据http协议，发送请求头
    socket.writeln("GET / HTTP/1.1");
    socket.writeln("Host:baidu.com");
    socket.writeln("Connection:close");
    socket.writeln();
    await socket.flush(); //发送
    //读取返回内容
    String _response  = await socket.transform(utf8.decoder).join();
    setState(() {
      _text = _response;
    });
    await socket.close();
  }
}
