import 'package:flutter/material.dart';


// *********Personal imports

import 'package:nile/components/cart_products.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.blue,
        title: Text("Cart"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () => {}),
        ],
      ),

      body: CartProducts(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total:"),
                subtitle: new Text("\₹ 230"),
              ),
            ),

            Expanded(
              child: new MaterialButton(onPressed: () {},
              child: new Text("Check out", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),

    );
  }
}
