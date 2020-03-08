import 'package:flutter/material.dart';

class Memento extends  StatelessWidget {
  String title;

  Memento(this.title);

  @override
  Widget build(BuildContext context) {
    return Card( //* Structure of the memento card shown in the main page
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      elevation: 8,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(title),
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
