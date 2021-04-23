import 'package:flutter/material.dart';
import 'package:test7/add_button.dart';

BottomSheet contact({BuildContext context}) {
  showModalBottomSheet(
      context: context,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      builder: (context) {
        return Container(
          height: 2 * MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50))),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(""), fit: BoxFit.fitHeight)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Richard Parker",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "richardparker2@gmail.com",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 2 * MediaQuery.of(context).size.width / 3,
                height: 1.6,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter amount",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AddButton(),
                  Text(
                    "500",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 2 * MediaQuery.of(context).size.width / 3,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Send to Richerd",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Cancel", style: TextStyle(fontSize: 15, color: Colors.grey))
            ],
          ),
        );
      });
}
