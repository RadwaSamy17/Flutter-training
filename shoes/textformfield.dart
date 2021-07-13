import 'package:flutter/material.dart';

Column InputField(
  BuildContext context,
  IconData icon,
  String hinttext,
  double radius,
  Color color,
) {
  return Column(
    textDirection: TextDirection.ltr,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 30,
      ),
      Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.grey[200], width: 3)),
        child: Center(
            child: TextFormField(
          textDirection: TextDirection.ltr,
          decoration: InputDecoration(
            hintText: hinttext,
            //contentPadding: EdgeInsets.only(right: 15),
            // filled: true,
            fillColor: Colors.black,
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        )),
      ),
    ],
  );
}
