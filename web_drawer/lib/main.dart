import 'package:flutter/material.dart';
import 'package:web_drawer/views/home/home_view.dart';
import 'package:web_drawer/views/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: LayoutTemplate(),
      //HomeView("Teste DEMO PQP"), // ? MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}