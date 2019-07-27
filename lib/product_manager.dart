import 'package:flutter/material.dart';
import 'package:flutter_sample/product_control.dart';
import 'package:flutter_sample/products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ),
        Expanded(
          child: Products(products, deleteProduct: deleteProduct),
        ),
      ],
    );
  }
}
