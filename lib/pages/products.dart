import 'package:flutter/material.dart';
import '../widgets/single_product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
   var productList = [
    {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },
    {
    "name":"furniture",

    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },

    {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },
       {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },  
  ];

  @override
  Widget build(BuildContext context) {

    final ProductArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        //child: Center(child: Text(args.category))
        child:  GridView.builder(
        itemCount: productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         itemBuilder: (BuildContext context, int index){
           return SingleProduct(
             prodName: productList[index]['name'],
             prodPicture: productList[index]['picture'],
             prodPrice: productList[index]['price'],
           );
         }),

      ),
    );
  }
}

class ProductArguments {
  final String category;

  ProductArguments(this.category);
}