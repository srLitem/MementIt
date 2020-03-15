import 'package:flutter/material.dart';
import 'package:mementit/widgets/memento/memento.dart';

class MementoDetails extends StatelessWidget {
  @required
  final Memento tappedMemento;

  MementoDetails({this.tappedMemento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Test'),
          SizedBox(
            height: 20,
          ),
          Text('Description'),
          RaisedButton(
            onPressed: () => {debugPrint('I am camera')},
            child: Text('Open Camera',
            style: TextStyle(color: Colors.white),),
          ),
        ],
      )),
    );
  }
}
