import 'package:flutter/material.dart';
import '../models/product_model.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
    {"name": "furniture", "picture": "assets/product/f4.jpeg", "price": "121"},
  ];

  @override
  Widget build(BuildContext context) {
    final ProductArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Center(child: Text(args.category)),
          Expanded(child: Graphql()),
        ],
      )),
    );
  }
}

class ProductArguments {
  final String category;

  ProductArguments(this.category);
}
