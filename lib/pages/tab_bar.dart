import 'package:flutter/material.dart';
import 'package:mobile/widgets/nested_tab_bar.dart';
import 'package:mobile/widgets/top_bar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Nested Tab Bar Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
            NestedTabBar(),
          ],
        ),
      ),
    );
  }
}
