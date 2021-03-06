import 'package:flutter/material.dart';

//* Widget to provide the header of the applciation
//* -----------------

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
        color: Color.fromRGBO(84, 126, 222, 1),
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
                //* Information of the header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //* Name of the user
                    Text(name,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(84, 126, 222, 1),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    //* Number of mementos
                    Text('My Mementos: $mementos',
                        style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(84, 126, 222, 1),
                        )),
                  ],
                ),
                //* Profile picture
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

}
