//TODO: Build a class to return the widget of the topbar of the app
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String name;
  int mementos;

  Header(this.name, this.mementos);

  @override
  Widget build(BuildContext context) {
    return Container( 
      //* Size of the header
     width: MediaQuery.of(context).size.width, 
     height: MediaQuery.of(context).size.height/6,
     padding: EdgeInsets.all(10),
     //*Decoration
     decoration: BoxDecoration(
       color: Colors.white,
     ),
     //*Childrens
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              // Information of the header
              Column(
                children: <Widget>[
                  Text(name),
                  Text('My mementos: $mementos')
              ],),
              // Profile picture
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image(
                  image: AssetImage('assets/img/profileTest.png'),
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                  ),
              ),
          ],),
      ],),
    );
  }
}