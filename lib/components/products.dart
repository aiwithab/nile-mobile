import 'package:flutter/material.dart';


//*********************Personal imports********************
import 'package:nile/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "The Divine Reality",
      "picture": "images/products/divine.jpg",
      "old_price": 1000,
      "price": 945,
    },
    {
      "name": "Macbook Pro",
      "picture": "images/products/mac.jpeg",
      "old_price": 180000,
      "price": 85000,
    },
    {
      "name": "Skullcandy Push",
      "picture": "images/products/ear.jpg",
      "old_price": 3000,
      "price": 2200,
    },
    {
      "name": "Tea Cup",
      "picture": "images/products/cup.jpg",
      "old_price": 500,
      "price": 350,
    },
    {
      "name": "Apple iPhone 11",
      "picture": "images/products/iphone.webp",
      "old_price": 120000,
      "price": 95000,
    },
    {
      "name": "Jordan Air",
      "picture": "images/products/jordan.jpg",
      "old_price": 30000,
      "price": 22000,
    },
    {
      "name": "Google Pixel 4",
      "picture": "images/products/pixel.jpg",
      "old_price": 100000,
      "price": 95000,
    },
    {
      "name": "Apple Watch",
      "picture": "images/products/watch.jpg",
      "old_price": 40000,
      "price": 35000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  SingleProduct({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(

                 //******************Passing values to productDetail Page**************

                  builder: (context) => new ProductDetails(
                    product_detail_name: product_name,
                    product_detail_picture: product_picture,
                    product_detail_old_price: product_old_price,
                    product_detail_price: product_price,
                  ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),),
                      ),
                      Text("\₹${product_price}", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,),),
                    ],
                  )
                ),
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
