import 'package:flutter/material.dart';
import 'package:er_site/main.dart';
import 'package:er_site/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Center(child: Text("DailyNeed"))),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
                height: 300,
                child: GridTile(
                    child: Container(
                      color: Colors.white70,
                      child: Image.asset(widget.product_detail_picture),
                    ),
                    footer: Container(
                      color: Colors.white,
                      child: ListTile(
                        leading: Text(
                          widget.product_detail_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        title: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              "\৳${widget.product_detail_old_price}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            )),
                            Expanded(
                              child: Text(
                                "\৳${widget.product_detail_new_price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))),

            ////////////////////first buttons//////////////////////
            Row(children: <Widget>[
              /////////////////size buttons//////////////////
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                                textColor: Colors.blue,
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.grey,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 5.0),
              ),

              /////////////////Color buttons//////////////////
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose a Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                                textColor: Colors.blue,
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.grey,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 5.0),
              ),
              /////////////////Quantity buttons//////////////////
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                                textColor: Colors.blue,
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.grey,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ]),

            /////////////////second buttons////////////////

            Row(children: <Widget>[
              /////////////////size buttons//////////////////

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Center(child: Text("Buy Now"))),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 18.0),
              ),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {}),
            ]),
            Divider(),
            ListTile(
              title: Text("Product details"),
              subtitle: Text(
                  "Over the past five decades, research on text summarization is widely seen in numerous applications related to information retrieval, intelligence gathering, information extraction and text mining. Text summarization refers to the technique to shorten a long document preserving the meaning of the actual document. Automatic text summarization is the data science problem of creating a short and exact summary from a longer document. Like text summarization, Bangla text summarization gives the highlighted sentences of a document as output. It gives an overview of the document. Hence the reader doesn’t need to read the whole document. The Bangla text summarization can also help in reading long news’s of a newspaper in a short time. So a Bangla text summarizer can augment readability and save time of the reader."),
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text(
                    "Product Name :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text(
                    "Brand Name :",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Zays",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                )
              ],
            ),
            Divider(),
            /////Similar Prod////
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 8.0),
              child: Text(
                "Products you may like",
                style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 300.0,
              child: similar_product(),
            )
          ],
        ));
  }
}

class similar_product extends StatefulWidget {
  @override
  _similar_productState createState() => _similar_productState();
}

class _similar_productState extends State<similar_product> {
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
      "name": "Mini Skirt",
      "picture": "images/product/skt1.jpeg",
      "old_price": "1650",
      "price": "1280",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return similar_single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class similar_single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  similar_single_product({
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
