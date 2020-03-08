import 'package:flutter/material.dart';
import 'package:mobile/pages/products.dart';
import 'pages/home_page.dart';
import 'pages/search.dart';
import 'package:mobile/pages/product_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/products',
      routes: {
        '/search': (context) =>  Search(),
        '/products': (context) => Products(),
        '/product_details': (context) => ProductDetail(),
      },
    );
  }
}
