import 'package:flutter/material.dart';
import 'package:mobile/pages/products.dart';

class HomePageGrid extends StatelessWidget {
  const HomePageGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[500],
      child: GridView.count(
        padding: EdgeInsets.all(0),
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
        childAspectRatio: 2.2,
        children: <Widget>[
          products(
            context,
            'Electronics',
            'Electronics',
            Icon(Icons.camera),
          ),
          products(context, 'Furniture', 'Furniture', Icon(Icons.camera)),
          products(
              context, 'Home Appliance', 'Home Appliance', Icon(Icons.camera)),
          products(context, 'Clothes', 'Clothes', Icon(Icons.camera)),
          products(
              context, 'Category five', 'Category five', Icon(Icons.camera)),
          products(context, 'Beauty & Fashion', 'Beauty & Fashion',
              Icon(Icons.camera)),
          products(context, 'Vehicles', 'Vehicles', Icon(Icons.camera)),
          products(context, 'Sports & Travel', 'Sports & Travel',
              Icon(Icons.camera)),
          products(context, 'Kids', 'Kids', Icon(Icons.camera)),
          products(context, 'Jewellery', 'Jewellery', Icon(Icons.camera)),
        ],
      ),
    );
  }

  Widget products(
      BuildContext context, String name, String categoryName, Icon icon) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Colors.red[300])),
      child: Center(
        child: ListTile(
          leading: icon,
          title: Text(
            name,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/products',
                arguments: ProductArguments(categoryName));
          },
        ),
      ),
    );
  }
}
