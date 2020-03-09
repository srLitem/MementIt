import 'package:flutter/material.dart';

class MementoDetails extends StatelessWidget {
  final title;
  final description;
  MementoDetails({this.title,this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Test'),
          SizedBox(height: 20,),
          Text('Description'),
        ],
      )),
    );
  }
}
