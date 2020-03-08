import 'package:flutter/material.dart';
import 'package:mementit/widgets/header.dart';
import 'package:mementit/widgets/memento/memento.dart';
import 'package:mementit/widgets/memento/memento_list.dart';

class MementoPage extends StatelessWidget {
  List<Memento> mementoL = [
    Memento('Omaritou'),
    Memento('Juanitou'),
    Memento('Ristorante')
  ]; //! Mock data

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        background(Color.fromRGBO(78, 114, 181, 1)),
        MementoList(mementoL),
        Header('Santiago Rhenals', 5),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.search, color: Color.fromRGBO(78, 114, 181, 1),),
                  onPressed: () => {debugPrint('Search a Memento')},
                  mini: true,
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.library_add, color: Color.fromRGBO(78, 114, 181, 1),),
                  onPressed: () => {debugPrint('Add a Memento')}
                  ),
              ],
            ),
            ),
        ),
      ],
    );
  }

  Container background(Color color) {
    return Container(
      color: color,
    );
  }
}
