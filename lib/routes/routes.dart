import 'package:flutter/material.dart';
import 'package:flutter_practica_exam/pages/first_page.dart';
import 'package:flutter_practica_exam/pages/second_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const FirstPage(),
    'page2': (BuildContext context) => const SecondPage()
  };
}
