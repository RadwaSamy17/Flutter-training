import 'package:flutter/material.dart';

import 'login_widgets.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                YallaAgazaLogo(),
                LoginFormContainer(context),
                LoginDivider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginText("Don't Have Account? ", 15, FontWeight.w400,
                        Colors.grey),
                    LoginText("Sign In", 15, FontWeight.w800, Colors.grey)
                  ],
                ),
                LoginBigBUtton(context, true),
                LoginBigBUtton(context, false)
              ],
            ),
          ],
        ));
  }
}
