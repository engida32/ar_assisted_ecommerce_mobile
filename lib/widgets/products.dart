import 'package:flutter/material.dart';
import 'package:mobile/widgets/Single_product.dart';
import 'package:mobile/widgets/top_bar.dart';

class products extends StatefulWidget {
  @override
  _productsState createState() {
    return _productsState();
  }
}

class _productsState extends State<products> {
  var product_list =[
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
    return Container(
        child: GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         itemBuilder: (BuildContext context, int index){
           return Single_product(
             prod_name: product_list[index]['name'],
             prod_picture: product_list[index]['picture'],
             prod_price: product_list[index]['price'],
           );
         }),
    );

}
}

// security
//AR
