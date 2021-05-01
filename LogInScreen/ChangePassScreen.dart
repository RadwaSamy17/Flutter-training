import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:log_in_screen/textformfield.dart';

import 'AppBar.dart';

TextEditingController oldPassController = TextEditingController();
TextEditingController newPassController = TextEditingController();
TextEditingController reNewPassController = TextEditingController();

class ChangePassScreen extends StatefulWidget {
  @override
  _ChangePassScreenState createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: Appbar(context, "تغيير كلمة المرور"),
        bottomNavigationBar: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor
                ]),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Center(
            child: Text(
              "تاكيد",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              InputField(context, "", "  كلمة المرور القديمة", false, 10,
                  Theme.of(context).accentColor, oldPassController),
              InputField(context, "", "  كلمة المرور الجديدة", false, 10,
                  Theme.of(context).accentColor, newPassController),
              InputField(context, "", "  تاكيد كلمة المرور الجديدة", false, 10,
                  Theme.of(context).accentColor, reNewPassController),
            ],
          ),
        ));
  }
}
