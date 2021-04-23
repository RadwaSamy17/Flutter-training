import 'package:flutter/material.dart';
import 'package:test5/textfield.dart';

class searchscreen extends StatefulWidget {
  @override
  _searchscreenState createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  Widget _navbar() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 245, top: 10),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  filled: true,
                  hintText: "اسم المطعم",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 180, left: 93, top: 10),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  filled: true,
                  hintText: "التصنيف",
                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 200, left: 25, top: 10, bottom: 17),
          child: Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor),
            child: Center(
              child: Icon(
                Icons.gps_fixed,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            "البحث",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            _navbar(),
            restList(context: context),
          ],
        ));
  }
}
