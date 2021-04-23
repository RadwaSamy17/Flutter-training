import 'package:flutter/material.dart';
import 'bottomSheet.dart';

List<String> imgurl = [
  "https://image.freepik.com/free-photo/cute-freelance-girl-using-laptop-sitting-floor-smiling_176420-20221.jpg",
  "https://image.freepik.com/free-photo/young-business-woman-working-laptop-office_1303-22814.jpg",
  "https://image.freepik.com/free-photo/caucasian-handsome-man-posing-with-arms-hip-smiling-isolated-purple-wall_1368-89876.jpg",
  "https://image.freepik.com/free-photo/portrait-young-business-woman-using-her-mobile-phone-while-standing-outside-office-buildings-business-success-concept_58466-11847.jpg",
  "https://image.freepik.com/free-photo/close-up-portrait-smiling-woman-talking-by-mobile-phone-successful-business-lady-using-smartphone-stylish-accessories-beige-coat-urban-buildings_273443-2878.jpg",
  "https://image.freepik.com/free-photo/shot-looking-happy-young-man-broadly-smiling-as-he-talks-his-girlfriend-during-online-call-using-earphones-his-electronic-gadget-people-technology-communication-concept_176420-10299.jpg",
  "https://image.freepik.com/free-photo/charming-girl-drinking-cappuccino_158595-1577.jpg",
  "https://image.freepik.com/free-photo/elegant-woman-white-blouse-spend-time-cafe_1157-32302.jpg",
  "https://image.freepik.com/free-photo/young-handsome-man-with-beard-holding-big-empty-placard-with-glasses-happy_1368-64783.jpg"
];

class PersonCard extends StatelessWidget {
  Widget personcard(String image) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey,
          image: DecorationImage(
              image: NetworkImage(image), fit: BoxFit.fitHeight)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        contact(context: context);
      },
      child: 
      
       ListView.builder(
          itemCount: 9,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return personcard(imgurl[index]);
          }),

    );
  }
}
