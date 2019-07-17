import 'package:flutter/material.dart';
import 'package:flutter_sample/products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}
