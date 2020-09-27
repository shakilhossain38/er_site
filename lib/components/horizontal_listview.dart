import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/categories/t.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/categories/f.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'images/categories/i.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'images/categories/j.png',
            image_caption: 'Jwellery',
          ),
          Category(
            image_location: 'images/categories/je.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/categories/d.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/categories/s.png',
            image_caption: 'Shoe',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 60.0,
              ),
              subtitle: Container(
                //padding: EdgeInsets.only(bottom: 2.0),
                alignment: Alignment.topCenter,
                child: Text(image_caption,
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w600),),
              )
          ),
        ),
      ),
    );
  }
}
