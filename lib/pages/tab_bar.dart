import 'package:flutter/material.dart';
import 'package:mobile/widgets/tab_bar_view.dart';
import 'package:mobile/widgets/top_bar.dart';

void main() => runApp(MyApp());

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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
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
