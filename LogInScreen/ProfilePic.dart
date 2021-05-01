import 'package:flutter/material.dart';

Stack ProfilePic(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),
        child: IconButton(
            icon: Icon(
              Icons.account_circle,
              size: 150,
            ),
            onPressed: null),
      ),
      Positioned(
          top: 110,
          left: 110,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(35)),
            child: Center(
              child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 18,
                    color: Theme.of(context).backgroundColor,
                  ),
                  onPressed: null),
            ),
          ))
    ],
  );
}
