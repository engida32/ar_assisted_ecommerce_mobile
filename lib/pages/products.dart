import 'package:flutter/material.dart';
import '../widgets/single_product.dart';
import '../widgets/top_bar.dart';

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
        body: Column(mainAxisAlignment: MainAxisAlignment.start,

            //child: Center(child: Text(args.category))
            children: <Widget>[
          TopBar(
            icon1: Icon(
              Icons.menu,
              color: Colors.white,
              size: 26,
            ),
            icon2: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 26,
            ),
            title: "Products ",
          ),
          Expanded(
            child: GridView.builder(
                itemCount: productList.length,
                padding: EdgeInsets.all(0),
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return SingleProduct(
                    prodName: productList[index]['name'],
                    prodPicture: productList[index]['picture'],
                    prodPrice: productList[index]['price'],
                  );
                }),
          ),
        ]));
  }
}

class ProductArguments {
  final String category;

  ProductArguments(this.category);
}
