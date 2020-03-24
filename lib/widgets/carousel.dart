import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carausel extends StatefulWidget {
  @override
  _CarauselState createState() => _CarauselState();
}

class _CarauselState extends State<Carausel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        height: MediaQuery.of(context).size.height * 0.2,
        aspectRatio: 16/9,
        autoPlay: true,
        pauseAutoPlayOnTouch: Duration(seconds: 6),
        enlargeCenterPage: true,
        items: [1,2,3].map( (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Image(image: AssetImage('assets/images/carousel$i.jpg'), fit: BoxFit.fill,),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}