import 'package:flutter/material.dart';
import 'package:test6/widges.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: null),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: null),
          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.black,
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 0),
                )),
          ],
        ),
        body: Column(
          children: [
            Column(
              children: [
                cat_list(),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Most Popular Items",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 74,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "90 Products",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              ],
            ),
            Expanded(child: product_list())
          ],
        ));
  }
}
