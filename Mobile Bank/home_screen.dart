import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Container(
            width: 40,
            height: 40,
            child: Image.network(
                "https://i.pinimg.com/originals/1c/11/4e/1c114e79fb72cfa2e6b73e72ce50278a.jpg"),
          ),
          leading: Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(40)),
            child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: null),
          ),
          actions: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(3, 4))
                  ]),
              child: IconButton(icon: Icon(Icons.search), onPressed: null),
            ),
          ]),
    );
  }
}
