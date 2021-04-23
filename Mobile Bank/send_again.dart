import 'package:flutter/material.dart';

import 'package:test7/person_card.dart';

import 'add_button.dart';

class SendAgain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 6, top: 3),
            child: Text(
              'Send Again',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 60,
            child: Row(
              children: [
                AddButton(),
                Expanded(
                    child: SizedBox(
                  child: PersonCard(),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
