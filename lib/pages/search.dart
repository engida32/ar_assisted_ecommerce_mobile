import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 6),
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height * 0.082,
            color: Colors.red[500],
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: TextField(
                  onTap: () {
                    ///////////
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search Items',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    suffixIcon: Material(
                      child: Icon(
                        Icons.search,
                        size: 22,
                        color: Colors.black87,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    )
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[

            ],
          ),
        ],
      ),
    );
  }
}