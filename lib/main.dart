import 'package:flutter/material.dart';
import 'package:mementit/widgets/structure.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MementIt!',
      theme: ThemeData(
        fontFamily: 'Sans',
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: Structure()),
    );
  }
}
