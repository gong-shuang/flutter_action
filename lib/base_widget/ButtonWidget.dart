import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({Key key}) : super(key: key);

  @override
  ButtonWidgetState createState() => new ButtonWidgetState();
}

class ButtonWidgetState extends State<ButtonWidget> {
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
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: () => {print("ssssssssss")},
              ),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: () => {},
              ),
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
              FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {},
              ),
            ]),
      ),
    );
  }
}
