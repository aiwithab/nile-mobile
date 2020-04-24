import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//  Personal package imported here

import 'package:nile/components/horizontal_listview.dart';
import 'package:nile/components/products.dart';
import 'package:nile/pages/cart.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget ImageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/music.jpg'),
          AssetImage('images/gadg1.jpg'),
          AssetImage('images/ff1.jpeg'),
          AssetImage('images/mf2.png'),
          AssetImage('images/crock.jpg'),
          AssetImage('images/jd1.jpg'),
          AssetImage('images/electron.jpeg'),
          AssetImage('images/book.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 850),
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.blue,
        title: Text("nile"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () => {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => new ShoppingCart())),
          ),],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//          ***********HEADER************
            new UserAccountsDrawerHeader(
              accountName: Text("AbdulAhad"),
              accountEmail: Text("abdulahadas@live.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),

//          ************BODY*****************

            InkWell(
              onTap: () => {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () => {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.yellow,
                ),
              ),
            ),

            InkWell(
              onTap: () => {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) => new ShoppingCart())),
              child: ListTile(
                title: Text("Cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () => {},
              child: ListTile(
                title: Text("Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () => {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () => {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.info,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //**************Image Carousel****************

          ImageCarousel,

          // **************Padding**********************

          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Text("Categories", style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          //************Horizontal List View***********
          HorizontalList(),

          Divider(),

          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Text("Recent Products",style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          //**************GridView*********************

          Container(
            height: 380.0,
            child: Products(),
          )



        ],
      ),
    );
  }
}
