import 'package:flutter/material.dart';
import 'package:mementit/widgets/memento/memento.dart';

class MementoList extends StatefulWidget {
  
  List<Memento> mementoL; // List of the mementos

  MementoList(this.mementoL); //Constructor

  @override
  _MementoListState createState() => _MementoListState();
}

class _MementoListState extends State<MementoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.mementoL.length, //Will be the size of the mementos List
      itemBuilder: (context, index){
        return widget.mementoL[index];
      },
    );
  }
}