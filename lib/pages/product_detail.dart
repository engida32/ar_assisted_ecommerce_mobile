import 'package:flutter/material.dart';
import '../widgets/single_product.dart';
import '../pages/products.dart';

class MyPageView extends StatefulWidget {
  MyPageView({Key key}) : super(key: key);

  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController;
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
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 29, 0, 0),
              child: Container(
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
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text('Previous'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
