import 'package:flutter/material.dart';

class MementoDetails extends StatelessWidget {
  @required final title;
  // @required final description;
  MementoDetails({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: <Widget>[
          Text(title),
          SizedBox(height: 20,),
          Text('description'),
        ],
      )),
    );
  }
}
