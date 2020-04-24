import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cat/books.jpg',
            image_caption: 'Books',
          ),
          Category(
            image_location: 'images/cat/clothes.jpg',
            image_caption: 'Clothes',
          ),
          Category(
            image_location: 'images/cat/laptop.jpg',
            image_caption: 'Laptop',
          ),
          Category(
            image_location: 'images/cat/mobile.jpg',
            image_caption: 'Mobile',
          ),
          Category(
            image_location: 'images/cat/shoes.jpg',
            image_caption: 'Shoes',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 75.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: new TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
