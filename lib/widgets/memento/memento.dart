import 'package:flutter/material.dart';

//* Widget to provide the memento information
//* Card with a nested Column
class Memento extends StatelessWidget {
  @required
  final String title;
  @required
  final String description;

  Memento(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          {Navigator.of(context).pushNamed('/details')},
      //* Structure of the memento card shown in the main page
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        elevation: 8,
        child: Column(
          children: <Widget>[
            ListTile(
              //* Name of the memento
              title: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Sans',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(78, 114, 181, 1),
                ),
              ),
              //* Description of the memento
              subtitle: Text(
                description,
                style: TextStyle(
                  color: Color.fromRGBO(78, 114, 181, .9),
                  fontFamily: 'Sans',
                  fontStyle: FontStyle.italic,
                ),
              ),
              //* Creation date of the memento
              trailing: Text(
                '03-04-2019',
                style: TextStyle(
                  color: Color.fromRGBO(78, 114, 181, .9),
                  fontFamily: 'Sans',
                ),
              ),
            ),
            //* Memento picture
            Container(
              child: Image(
                image: AssetImage('assets/img/test.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
