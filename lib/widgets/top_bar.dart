import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key key, this.icon1, this.icon2, this.title}) : super(key: key);
  final Icon icon1, icon2;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[600],
      padding: EdgeInsets.fromLTRB(8, 35, 8, 6),
      margin: EdgeInsets.only(bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          icon1,
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.7,
            ),
          ),
          icon2,
        ],
      ),
    );
  }
}