import 'package:flutter/material.dart';

class OtherNewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other New route"),
      ),
      body: Center(
        child: Text("This is Other new route"),
      ),
    );
  }
}