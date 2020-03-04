import 'package:flutter/material.dart';

class Memento extends  StatefulWidget {
  String title;

  Memento(this.title);

  @override
  _Memento createState() => _Memento();
}

class _Memento extends State<Memento> {
  @override
  Widget build(BuildContext context) {
    return Card( //* Structure of the memento card shown in the main page
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      elevation: 8,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(widget.title),
            subtitle: Text(
              'Test',
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
            trailing: Text(
              '03-04-2019',
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
            ),
          Container(
            child: Image(image: AssetImage('assets/img/test.png'),),
          ),
        ],
      ),
    );
  }
}