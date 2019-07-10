
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

class DioPackageRoute extends StatefulWidget {
  @override
  _DioPackageRouteState createState() => new _DioPackageRouteState();
}

class _DioPackageRouteState extends State<DioPackageRoute> {
  bool _loading = false;
  String _text = "";

  Dio dio = new Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio Package"),
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
                            Response response = await Dio().get("http://www.baidu.com");
                            print(response);
                            print(response.data.toString());
                            setState(() {
                              _text = response.data.toString();
                            });
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
}
