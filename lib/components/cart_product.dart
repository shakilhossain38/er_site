import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_cart = [
    {
      "name": "Dress",
      "picture": "images/product/dress1.jpeg",
      "price": "1600",
      "size": "M",
      "color": "Red",
      "quantity": "1",
    },
    {
      "name": "Lady Blazer",
      "picture": "images/product/blazer2.jpeg",
      "price": "1800",
      "size": "L",
      "color": "Blue",
      "quantity": "1",
    },
    {
      "name": "Black Top",
      "picture": "images/product/dress2.jpeg",
      "price": "750",
      "size": "M",
      "color": "Black",
      "quantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_on_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_products(
          cart_prod_name: product_on_cart[index]["name"],
          cart_prod_color: product_on_cart[index]["color"],
          cart_prod_quantity: product_on_cart[index]["quantity"],
          cart_prod_size: product_on_cart[index]["size"],
          cart_prod_price: product_on_cart[index]["price"],
          cart_prod_picture: product_on_cart[index]["picture"],
        );
      },
    );
  }
}

class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_quantity,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),

        ////////////load image//////////////
        leading: Container(
          height: 80,
          width: 80,
          child: Image.asset(
            cart_prod_picture,
            fit: BoxFit.fill,
          ),
        ),

        /////////////title of the image/////////////////
        title: Text(cart_prod_name),

        /////////////other details of the product/////////////////
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(0.0), child: Text("Size:")),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
                    child: Text("Color:")),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            /////////////price/////////////
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\৳$cart_prod_price",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
        trailing: FittedBox(
            fit: BoxFit.fill,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 5.0)),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_up,
                      size: 38.0,
                    ),
                    onPressed: () {}),
                Text(
                  cart_prod_quantity,
                  style: TextStyle(fontSize: 25.0),
                ),
                Padding(padding: EdgeInsets.only(right: 5.0)),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 38.0,
                    ),
                    onPressed: () {}),
              ],
            )),
      ),
    ));
  }
}
