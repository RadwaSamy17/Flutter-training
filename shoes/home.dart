import 'package:flutter/material.dart';
import 'package:shoes_sotre/bottomNavigationbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            "DISCOVER",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            )
          ],
          bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              indicatorColor: Theme.of(context).backgroundColor,
              tabs: [
                Tab(
                  text: "Jackets",
                ),
                Tab(
                  text: "Trousers",
                ),
                Tab(
                  text: "T-shirts",
                ),
                Tab(
                  text: "Shoes",
                ),
              ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Text(""),
            Text(""),
            Text(""),
            Shoes_Gridview(context),
          ],
        ),
        bottomNavigationBar: TestBottomBar(context));
  }
}
