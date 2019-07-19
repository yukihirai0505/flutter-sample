import 'package:flutter/material.dart';
import 'package:flutter_sample/product_manager.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager(startingProduct: "Food Tester"),
      ),
    );
  }
}
