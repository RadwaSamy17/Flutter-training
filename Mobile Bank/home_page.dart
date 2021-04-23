import 'package:flutter/material.dart';
import 'package:test7/recentActivity_card.dart';
import 'package:test7/send_again.dart';

import 'custom_appbar.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 6 * MediaQuery.of(context).size.height / 10,
            ),
            CustomAppBar(),
            Positioned(bottom: 30, left: 30, right: 30, child: SendAgain())
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: Row(
            children: [
              Text(
                'Recent Activity',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return activityCard();
              }),
        ),
        
      ]),
    );
  }
}
