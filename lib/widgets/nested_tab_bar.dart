import 'package:flutter/material.dart';
import 'package:mobile/widgets/top_bar.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.red,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.green,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          indicatorWeight: 3,
          tabs: <Widget>[
            Tab(
              text: "Electronics",
              icon: Icon(Icons.computer),
            ),
            Tab(
              text: "Food",
              icon: Icon(Icons.local_grocery_store),
            ),
            Tab(
              text: "clothing",
              icon: Icon(Icons.shop),
            ),
            Tab(
              text: "whatever",
              icon: Icon(Icons.store),
            ),
            Tab(
              text: "clothig",
              icon: Icon(Icons.account_box),
            ),
            Tab(
              text: "clothig",
              icon: Icon(Icons.account_box),
            ),
          ],
        ),
        Container(
          height: screenHeight * 0.77,
          margin: EdgeInsets.all(0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blueAccent,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.orangeAccent,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.greenAccent,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.indigoAccent,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.redAccent,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
