import 'package:flutter/material.dart';
import 'package:mementit/widgets/memento/memento_details.dart';
import 'package:mementit/widgets/memento/memento_page.dart';

//* Widget to set the routes that the application would be using
class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
      //*Main route 
      //* In this case, The Memento Page
      case '/': 
      return MaterialPageRoute(builder: (_) => SafeArea(child: MementoPage()));
      //* Memento details page
      case '/details': 
      return MaterialPageRoute(builder: (_) => SafeArea(child: MementoDetails()));
      //* By default, the user is redirected to the main Memento Page
      default:
      return MaterialPageRoute(builder: (_) => SafeArea(child: MementoPage()));
    }

  }
}