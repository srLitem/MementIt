import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String name;
  final int mementos;

  Header(this.name, this.mementos);

  @override
  Widget build(BuildContext context) {
    return Container(
      //* Size of the header
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6,
      padding: EdgeInsets.all(10),
      //*Decoration
      decoration: BoxDecoration(
        color: Color.fromRGBO(78, 114, 181, 1),
      ),
      //*Childrens
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Information of the header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: styleOfText(25.0, FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'My Mementos: $mementos',
                      style: styleOfText(20.0, FontWeight.normal)
                    ),
                  ],
                ),
                // Profile picture
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/profileTest.png'),
                    radius: 35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle styleOfText(double size, FontWeight weight) {
    return TextStyle(
      fontFamily: 'Sans',
      fontSize: size,
      fontWeight: weight,
      fontStyle: FontStyle.italic,
      color: Color.fromRGBO(78, 114, 181, 1),
    );
  }
}
