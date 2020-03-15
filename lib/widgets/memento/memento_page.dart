import 'package:flutter/material.dart';
import 'package:mementit/widgets/header.dart';
import 'package:mementit/widgets/memento/memento.dart';
import 'package:mementit/widgets/memento/memento_list.dart';

//* Widget to return the main Memento Page
//* -----------------

class MementoPage extends StatelessWidget {
  final List<Memento> mementoL = [
    Memento('Omaritou', 'Talentoso'),
    Memento('Juanitou', 'Asertivo'),
    Memento('Ristorante', 'Pizzerina')
  ]; //! Mock data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(Color.fromRGBO(84, 126, 222, 1)),
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
                    heroTag: null,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(84, 126, 222, 1),
                    ),
                    onPressed: () => {debugPrint('Search a Memento')},
                    mini: true,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    heroTag: null,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.library_add,
                        color: Color.fromRGBO(84, 126, 222, 1),
                      ),
                      onPressed: () => {debugPrint('Add a Memento')}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container background(Color color) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color, color.withOpacity(.6)],
            stops: [0.2, 0.6],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    );
  }
}
