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
        MementoList(mementoL),
        Header('Santiago', 3),
      ],
    );
  }
}