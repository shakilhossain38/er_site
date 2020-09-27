import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:er_site/components/horizontal_listview.dart';
import 'package:er_site/components/product.dart';
import 'package:er_site/pages/cart.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          InkWell(
            onTap: () {},
            child: Image.asset('images/a1.jpg'),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('images/a2.jpg'),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('images/a3.jpg'),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('images/a4.jpg'),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('images/a5.jpg'),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('images/a6.jpg'),
          ),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1200),
        dotSize: 3.0,
        dotColor: Colors.blue,
        indicatorBgPadding: 0.0,
      ),
    );
    int _currentIndex = 0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(child: Text("DailyNeed")),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                }),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              //header
              UserAccountsDrawerHeader(
                accountName: Text("Tariqul Islam"),
                accountEmail: Text("tq.ridoy@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.brown),
              ),
              //body
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: ListTile(
                  title: Text(
                    "Home Page",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "My Account",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "My Orders",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                child: ListTile(
                  title: Text(
                    "Shopping Cart",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "Favorites",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  leading: Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            //image carousel
            image_carousel,
            //padding
            new Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700),
                )),

            //horizontal list

            Container(
              child: HorizontalList(),
            ),
            //padding
            new Padding(
                padding: EdgeInsets.only(top: 20.0, left: 8.0),
                child: Text(
                  "Recent Products",
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700),
                )),
            //Grid View
            Container(
              height: 320.0,
              child: Product(),
            )
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          items: [

            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.home,color: Colors.white,), onPressed: (){}),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),


            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.favorite,color: Colors.white), onPressed: (){}),
              title: Text(
                "Favorites",
                style: TextStyle(color: Colors.white),
              ),


            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              }),
              title: Text(
                "Cart",
                style: TextStyle(color: Colors.white),
              ),


            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.settings,color: Colors.white), onPressed: (){}),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),


            ),
          ],


        )

    );
  }
}
