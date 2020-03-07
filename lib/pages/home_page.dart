import 'package:flutter/material.dart';
import 'package:mobile/widgets/carousel.dart';
import 'package:mobile/widgets/search_container.dart';
import 'package:mobile/widgets/products.dart';
import '../widgets/top_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(
            icon1: Icon(Icons.menu, color: Colors.white, size: 26,),
            icon2: Icon(Icons.shopping_cart, color: Colors.white, size: 26,),
            title: "AR Assisted E-commerce",
          ),
         // Carausel(),
        
          SearchContainer(),

          new Padding(padding: const EdgeInsets.all(20.0),
          
          child: new Text('Recent product' ), ),
          Container(
              child:  products(),
          ),

        ],
      ),
    
    );
  }
}
