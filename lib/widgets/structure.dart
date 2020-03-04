import 'package:flutter/material.dart';
import 'package:mementit/widgets/memento/memento_page.dart';


class Structure extends StatefulWidget {
  Structure({Key key}) : super(key: key);

  @override
  _StructureState createState() => _StructureState();
}

class _StructureState extends State<Structure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MementoPage(),
    );
  }
}