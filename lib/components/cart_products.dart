import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "The Divine Reality",
      "picture": "images/products/divine.jpg",
      "price": 945,
      "size": "PaperBack",
      "color": "Blue",
      "quantity": 1,
    },
    {
      "name": "Google Pixel 4",
      "picture": "images/products/pixel.jpg",
      "price": 95000,
      "size": "128",
      "color": "Blue",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_product_name: productsOnTheCart[index]["name"],
            cart_product_color: productsOnTheCart[index]["color"],
            cart_product_picture: productsOnTheCart[index]["picture"],
            cart_product_price: productsOnTheCart[index]["price"],
            cart_product_quantity: productsOnTheCart[index]["quantity"],
            cart_product_size: productsOnTheCart[index]["size"],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  SingleCartProduct({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_color,
    this.cart_product_quantity,
    this.cart_product_size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //=========  LEADING SECTION =================

        leading: new Image.asset(
          cart_product_picture,
          width: 50.0,
          height: 50.0,
        ),

        //=========  TITLE SECTION =================

        title: new Text(cart_product_name),

        //=========  SUBTITLE SECTION =================

        subtitle: new Column(
          children: <Widget>[
            // ROW INSIDE COLUMN

            new Row(
              children: <Widget>[
                //          *****This is size of product section

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                //          *****This is color of product section

                new Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 8.0, 2.0, 8.0),
                  child: new Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_product_color,
                      style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),

            // ============THIS SECTION IS PRODUCT PRICE ============

            new Container(
              alignment: Alignment.topLeft,
              child: Text("₹${cart_product_price}",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
            ),
          ],
        ),

        trailing: new IconButton(icon: Icon(Icons.cancel,color: Colors.redAccent,), onPressed: (){}),

      ),
    );
  }
}
