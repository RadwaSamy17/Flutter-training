import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:log_in_screen/AppBar.dart';
import 'package:log_in_screen/ChangePassScreen.dart';
import 'package:log_in_screen/ProfilePic.dart';
import 'package:log_in_screen/textformfield.dart';

String enteredtext = "100";

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      appBar: Appbar(context, "بيانات حسابي"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ProfilePic(context),
            Center(
              child: Username(context),
            ),
            SizedBox(
              height: 50,
            ),
            InputField(context, "رقم الجوال", "", true, 30, Colors.white,
                phoneNumberController),
            SizedBox(
              height: 10,
            ),
            InputField(context, "اسم المستخدم", "", true, 30, Colors.white,
                userNameController),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePassScreen()));
              },
              child: Center(
                child: Text(
                  "تغيير كلمة المرور",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text(
                  "تاكيد",
                  style: TextStyle(
                      color: Theme.of(context).backgroundColor, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
