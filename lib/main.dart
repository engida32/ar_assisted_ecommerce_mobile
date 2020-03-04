import 'package:flutter/material.dart';
import 'package:mobile/pages/products.dart';
import 'pages/home_page.dart';
import 'pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/search': (context) =>  Search(),
        '/products': (context) => Products(),
      },
    );
  }
}
