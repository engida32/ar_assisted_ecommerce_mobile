import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.082,
      padding: EdgeInsets.only(top: 6, bottom: 6),
      color: Colors.red[500],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          child: TextField(
            showCursor: false,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/search',
              );
            },
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
    );
  }
}