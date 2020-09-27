import 'package:flutter/material.dart';
import 'package:er_site/main.dart';
import 'package:er_site/components/cart_product.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(child: Text("Cart")),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(children: <Widget>[
          Expanded(
              child: Text(
            "Total:",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )),
          Expanded(
              child: MaterialButton(
            onPressed: () {},
            child: Text(
              "Check Out",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
          ))
        ]),
      ),
    );
  }
}
