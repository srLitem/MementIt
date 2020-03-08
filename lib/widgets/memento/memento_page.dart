import 'package:flutter/material.dart';
import 'package:mementit/widgets/header.dart';
import 'package:mementit/widgets/memento/memento.dart';
import 'package:mementit/widgets/memento/memento_list.dart';

class MementoPage extends StatelessWidget {
  List<Memento> mementoL = [Memento('Omaritou'), Memento('Juanitou'), Memento('Ristorante')]; //! Mock data

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        background(Color.fromRGBO(78, 114, 181, 1)),
        MementoList(mementoL),
        Header('Santiago Rhenals', 5),
      ],
    );
  }

  Container background(Color color){
    return Container(
          color: color,
        );
  }
}