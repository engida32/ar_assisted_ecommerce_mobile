import 'package:flutter/material.dart';

class Single_product  extends StatelessWidget {
  final prod_name;
  final prod_price;
  final prod_picture;


  Single_product({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: 
      prod_name, 
      child: InkWell(
        onTap: (){},
      child: GridTile(
        footer: Container(
          color: Colors.white.withOpacity(0.4),
           child: ListTile(
          leading: Text(prod_name, style: TextStyle( fontWeight: FontWeight.w500 ),),
          title: Text("\$$prod_price",
          style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
        )),
        child: Image.asset(prod_picture, fit: BoxFit.cover,),
        ),
       )),
    
      
    );
  }
}