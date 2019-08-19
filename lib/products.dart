import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          // SizedBox(
          //   height: 10.0,
          // ),
          Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                      // fit: FlexFit.tight,
                      flex: 1,
                      child: Text(
                        products[index]['title'],
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'LightNovel',
                        ),
                      )),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2.5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          '\$${products[index]['price'].toString()}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              )),
          SizedBox(
            height: 6.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 2.5,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(4.0)),
            child: Text('Union Square, San Francisco'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(
                    context, '/product/' + index.toString()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductLists() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(child: Text('No products found, please add some!s'));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductLists();
  }
}
