import 'package:flutter/material.dart';
import 'package:mementit/widgets/memento/memento_details.dart';
import 'package:mementit/widgets/memento/memento_page.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
      return MaterialPageRoute(builder: (_) => SafeArea(child: MementoPage()));

      case '/details':
      return MaterialPageRoute(builder: (_) => SafeArea(child: MementoDetails()));
    }

  }
}