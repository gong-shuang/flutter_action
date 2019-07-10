import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class HttpBlockRoute extends StatefulWidget {
  @override
  _HttpBlockRouteState createState() => new _HttpBlockRouteState();
}

class _HttpBlockRouteState extends State<HttpBlockRoute> {
  bool _loading = false;
  String _text = "";

  Dio dio = new Dio();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Block"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("分块下载"),
                  onPressed: _loading
                      ? null
                      : () async {
                          setState(() {
                            _loading = true;
                            _text = "正在请求...";
                          });
                          try {
                            httpFunction();
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

  httpFunction() async {
    var url = "http://download.dcloud.net.cn/HBuilder.9.0.2.macosx_64.dmg";
    // 获取应用目录
    String dir = (await getApplicationDocumentsDirectory()).path;
    File tempFile =  new File('$dir/HBuilder.9.0.2.macosx_64.dmg');
    var savePath = tempFile.path;
    print("----savePath:${savePath}");
    await downloadWithChunks(url, savePath,
        onReceiveProgress: (received, total) {
      if (total != -1) {
        var progress  = "${(received / total * 100).floor()}%";
        setState(() {
          _text = "下载进度：${progress}";
        });
        print("progress ：${progress }");
      }
    });
  }

  /// Downloading by spiting as file in chunks
  Future downloadWithChunks(
    url,
    savePath, {
    ProgressCallback onReceiveProgress,
  }) async {
    const firstChunkSize = 102;
    const maxChunk = 3;

    int total = 0;
    var dio = Dio();
    var progress = <int>[];

    createCallback(no) {
      return (int received, _) {
        progress[no] = received;
        if (onReceiveProgress != null && total != 0) {
          onReceiveProgress(progress.reduce((a, b) => a + b), total);
        }
      };
    }

    //start 代表当前块的起始位置，end代表结束位置
    //no 代表当前是第几块
    Future<Response> downloadChunk(url, start, end, no) async {
      progress.add(0); //progress记录每一块已接收数据的长度
      --end;
      return dio.download(
        url,
        savePath + "temp$no", //临时文件按照块的序号命名，方便最后合并
        onReceiveProgress: createCallback(no), // 创建进度回调，后面实现
        options: Options(
          headers: {"range": "bytes=$start-$end"}, //指定请求的内容区间
        ),
      );
    }

    Future mergeTempFiles(chunk) async {
      File f = File(savePath + "temp0");
      IOSink ioSink= f.openWrite(mode: FileMode.writeOnlyAppend);
      //合并临时文件
      for (int i = 1; i < chunk; ++i) {
        File _f = File(savePath + "temp$i");
        await ioSink.addStream(_f.openRead());
        await _f.delete(); //删除临时文件
      }
      await ioSink.close();
      await f.rename(savePath); //合并后的文件重命名为真正的名称
    }

    // 通过第一个分块请求检测服务器是否支持分块传输
    Response response = await downloadChunk(url, 0, firstChunkSize, 0);
    if (response.statusCode == 206) {    //如果支持
      //解析文件总长度，进而算出剩余长度
      total = int.parse(
          response.headers.value(HttpHeaders.contentRangeHeader).split("/").last);
      int reserved = total -
          int.parse(response.headers.value(HttpHeaders.contentLengthHeader));
      //文件的总块数(包括第一块)
      int chunk = (reserved / firstChunkSize).ceil() + 1;
      if (chunk > 1) {
        int chunkSize = firstChunkSize;
        if (chunk > maxChunk + 1) {
          chunk = maxChunk + 1;
          chunkSize = (reserved / maxChunk).ceil();
        }
        var futures = <Future>[];
        for (int i = 0; i < maxChunk; ++i) {
          int start = firstChunkSize + i * chunkSize;
          //分块下载剩余文件
          futures.add(downloadChunk(url, start, start + chunkSize, i + 1));
        }
        //等待所有分块全部下载完成
        await Future.wait(futures);
      }
      //合并文件文件
      await mergeTempFiles(chunk);
    }
  }
}
