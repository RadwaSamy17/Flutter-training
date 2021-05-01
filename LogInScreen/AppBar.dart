import 'package:flutter/material.dart';

AppBar Appbar(BuildContext context, String text) {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 100,
    leading: null,
    actions: [
      IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          })
    ],
    flexibleSpace: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/appbar.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 23,
          color: Color.fromRGBO(92, 52, 54, 1)),
    ),
  );
}
