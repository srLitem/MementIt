import 'package:flutter/material.dart';
import 'package:mementit/widgets/memento/memento.dart';

//* Widget to provide the list of mementos that the user has stored
//* -----------------

class MementoList extends StatelessWidget {
  
  final List<Memento> mementoL; // List of the mementos

  MementoList(this.mementoL); //Constructor

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
      itemCount: mementoL.length, //Will be the size of the mementos List
      itemBuilder: (context, index){
        return mementoL[index];
      },
    );
  }
}