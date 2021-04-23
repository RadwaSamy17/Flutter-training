import 'package:flutter/material.dart';

Container LoginBigBUtton(BuildContext context, bool text) {
  return Container(
    width: MediaQuery.of(context).size.width - 80,
    height: 45,
    margin: EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(50), right: Radius.circular(50))),
    child: Center(
      child: text
          ? Text(
              "f",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white),
            )
          : Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/google.png"),
                      fit: BoxFit.fill))),
    ),
  );
}

Container LoginButton(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 180,
    height: 40,
    margin: EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.blue),
    child: Center(
      child: LoginText("LOGIN", 20, FontWeight.w300, Colors.white),
    ),
  );
}

Container YallaAgazaLogo() {
  return Container(
    width: 140,
    height: 140,
    margin: EdgeInsets.only(top: 15),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("asset/yalla_agaza.jfif"), fit: BoxFit.fill)),
  );
}

Divider LoginDivider() {
  return Divider(
    height: 3,
    thickness: 1.4,
    indent: 30,
    endIndent: 30,
    color: Colors.grey.withOpacity(0.5),
  );
}

Text LoginText(
    String name, double size, FontWeight fontWeight, Color fontColor) {
  return Text(
    name,
    style: TextStyle(fontSize: size, fontWeight: fontWeight, color: fontColor),
  );
}

Container LoginFormTextField(bool password, String hinttext, IconData icon) {
  return Container(
    height: 40,
    child: TextField(
        style: TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
        keyboardType: TextInputType.emailAddress,
        obscureText: password,
        decoration: InputDecoration(
            // enabledBorder: UnderlineInputBorder(),
            //contentPadding: EdgeInsets.only(left: 15, bottom: 10),
            hintText: hinttext,
            hintStyle: TextStyle(
              fontSize: 17,
              color: Colors.grey[500],
            ),
            prefixIcon: Icon(
              icon,
              size: 23,
            ),
            suffixIcon: password ? Icon(Icons.visibility) : null)),
  );
}

Container LoginFormContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 3 + 40,
    margin: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 35),
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 7,
            blurRadius: 25,
            offset: Offset(0, 7)),
      ],
    ),
    child: Column(
      children: [
        LoginFormTextField(false, "Email", Icons.account_circle),
        SizedBox(
          height: 25,
        ),
        LoginFormTextField(true, "Password", Icons.lock),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LoginText("Forget Password ?", 15, FontWeight.w300, Colors.black),
          ],
        ),
        LoginButton(context)
      ],
    ),
  );
}
