import 'package:flutter/material.dart';

class products extends StatefulWidget {
  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  var product_list =[
    {
    "name":"furniture",
    "picture":"assets/product/f2.jpg",
    "price":"121"
    },
    {
    "name":"furniture",
    
    "picture":"assets/product/fu1.jpg",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f3.png",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f4.jpeg",
    "price":"121"
    },

    {
    "name":"furniture",
    "picture":"assets/product/fu1.jpg",
    "price":"121"
    },
     {
    "name":"furniture",
    "picture":"assets/product/f3.png",
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
class single_product  extends StatelessWidget {
  final prod_name;
  final prod_price;
  final prod_picture;

  single_product({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: 
      prod_name, 
      child: InkWell(onTap: (){},
      child: GridTile(
        footer: Container(
          color: Colors.white70,
           child: ListTile(
          leading: Text(prod_name, style: TextStyle( fontWeight: FontWeight.normal),),
        )),
        child: Image.asset(prod_picture, fit: BoxFit.cover,),
        ),
       )),
    
      
    );
  }
}
// security
//AR
