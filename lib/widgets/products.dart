import 'package:flutter/material.dart';
import 'package:mobile/widgets/single_product.dart';

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
    return Expanded(
          child: GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         itemBuilder: (BuildContext context, int index){
           return single_product(
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
