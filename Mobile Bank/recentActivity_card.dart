import 'package:flutter/material.dart';

class activityCard extends StatefulWidget {
  @override
  _activityCardState createState() => _activityCardState();
}

class _activityCardState extends State<activityCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green[100]),
              child: Center(
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.green,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Simon Berg",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Today . 09.00",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              width: 140,
            ),
            Text(
              "+\$ 48.50",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
