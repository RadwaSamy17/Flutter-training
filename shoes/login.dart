import 'package:flutter/material.dart';
import 'package:shoes_sotre/home.dart';
import 'package:shoes_sotre/textformfield.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: Icon(
                      Icons.shopping_cart,
                      size: 80,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Buy It",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  InputField(
                    context,
                    Icons.mail,
                    "Email",
                    25,
                    Theme.of(context).accentColor,
                  ),
                  InputField(
                    context,
                    Icons.lock,
                    "Password",
                    25,
                    Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(45)),
                      child: Center(
                        child: Text(
                          "LogIn",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have any accounts? ",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
