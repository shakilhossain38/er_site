import 'package:flutter/material.dart';
import 'package:er_site/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/product/blazer1.jpeg",
      "old_price": "2150",
      "price": "1450",
    },
    {
      "name": "Red Dress",
      "picture": "images/product/dress1.jpeg",
      "old_price": "2000",
      "price": "1600",
    },
    {
      "name": "Lady Blazer",
      "picture": "images/product/blazer2.jpeg",
      "old_price": "2200",
      "price": "1800",
    },
    {
      "name": "Black Top",
      "picture": "images/product/dress2.jpeg",
      "old_price": "1200",
      "price": "750",
    },
    {
      "name": "Brown Hill",
      "picture": "images/product/hills1.jpeg",
      "old_price": "3000",
      "price": "1780",
    },
    {
      "name": "Red Hill",
      "picture": "images/product/hills2.jpeg",
      "old_price": "2500",
      "price": "1580",
    },
    {
      "name": "Trouser",
      "picture": "images/product/pants1.jpg",
      "old_price": "1500",
      "price": "950",
    },
    {
      "name": "Trouser",
      "picture": "images/product/pants2.jpeg",
      "old_price": "1220",
      "price": "770",
    },
    {
      "name": "Shoe",
      "picture": "images/product/shoe1.jpg",
      "old_price": "2300",
      "price": "1600",
    },
    {
      "name": "Mini Skirt",
      "picture": "images/product/skt1.jpeg",
      "old_price": "1650",
      "price": "1280",
    },
    {
      "name": "Pink Skirt",
      "picture": "images/product/skt2.jpeg",
      "old_price": "1220",
      "price": "940",
    },
    {
      "name": "Watch",
      "picture": "images/product/watch.jpg",
      "old_price": "1540",
      "price": "840",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_product({
    this.product_name,
    this.product_old_price,
    this.product_picture,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: Text(product_name),
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                    product_detail_picture: product_picture,
                    product_detail_old_price: product_old_price,
                    product_detail_new_price: product_price,
                    product_detail_name: product_name,
                  ))),
          child: GridTile(
            child: Image.asset(product_picture),
            footer: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Center(
                        child: Text(
                          product_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Center(
                              child: Text(
                        '\৳$product_price',
                        //textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                        ),
                      ))),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Center(
                        child: Text(
                          '\৳$product_old_price',
                          //textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
