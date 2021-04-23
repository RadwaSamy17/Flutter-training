import 'package:flutter/material.dart';

Widget restCard(String buttontext, String restname, String imageURL,
    {BuildContext context}) {
  return Stack(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageURL), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12)),
      ),
      Positioned(
          top: 20,
          left: 40,
          child: Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.3)),
            child: Center(
              child: Text(
                buttontext,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )),
      Positioned(
          bottom: 20,
          right: 40,
          child: Column(
            children: [
              Text(
                restname,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "شارع الملك عبد العزيز - جدة",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.location_on,
                    size: 15,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ))
    ],
  );
}

List<Map<String, dynamic>> _info = [
  {
    "button": "مشويات",
    "name": "مطعم ديري كوين",
    "url":
        "https://image.freepik.com/free-photo/restaurant-interior_1127-3394.jpg"
  },
  {
    "button": "مأكولات سريعة",
    "name": "مطعم تاكو بيل",
    "url":
        "https://image.freepik.com/free-photo/interior-shot-cafe-with-chairs-near-bar-with-wooden-tables_181624-1669.jpg"
  },
  {
    "button": "مخبوزات",
    "name": "مطعم اربيز",
    "url": "https://image.freepik.com/free-photo/restaurant_23-2148014999.jpg"
  },
  {
    "button": "اسماك",
    "name": "مطعم طرح بحر ",
    "url":
        "https://image.freepik.com/free-photo/restaurant-open-space-new-concept_140725-7438.jpg"
  }
];
Widget restList({BuildContext context}) {
  return Expanded(
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (ctx, index) {
            return restCard(_info[index]["button"], _info[index]["name"],
                _info[index]["url"],
                context: context);
          }));
}
//https://image.freepik.com/free-photo/restaurant-interior_1127-3394.jpg
