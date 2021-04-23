import 'package:flutter/material.dart';

Widget cat_card(String title) {
  return Container(
    height: 30,
    margin: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    decoration: BoxDecoration(
      color: Colors.yellow[300],
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      child: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}

List<String> _cat = [
  "Fruits",
  "Vegetables",
  "Fruits Juices",
  "Special Fruits",
  "Herbs"
];
Widget cat_list() {
  return SizedBox(
    height: 30,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return cat_card(_cat[index]);
        }),
  );
}

List<Map<String, dynamic>> _prod = [
  {
    "color": Colors.blue,
    "name": "Kiwi Fruits",
    "url":
        "https://as1.ftcdn.net/jpg/01/96/04/56/500_F_196045648_T3nR3mpZBg4qhJH2pGL2IoGl8NxAIujb.jpg"
  },
  {
    "color": Colors.green,
    "name": "Grapes",
    "url":
        "https://as2.ftcdn.net/jpg/03/27/96/31/500_F_327963166_13fmMgCKCV071Asm7vGsPlKafIOiBiC2.jpg"
  },
  {
    "color": Colors.orange,
    "name": "Blueberries",
    "url":
        "https://as1.ftcdn.net/jpg/02/96/27/56/500_F_296275687_jnyxOZXKEy7WSvb6pyAlVL87ukljQJpz.jpg"
  },
  {
    "color": Colors.amberAccent,
    "name": "Red Cherry",
    "url":
        "https://as1.ftcdn.net/jpg/02/51/59/72/500_F_251597296_b2KNSz3BlWLy9CxIl1y4sVl8B8JXOEap.jpg"
  },
  {
    "color": Colors.red,
    "name": "Strawberry",
    "url":
        "https://as1.ftcdn.net/jpg/01/90/27/96/500_F_190279606_Pcge6K49YBMPiI26EEjDKxo8eVbrqYh6.jpg"
  },
  {
    "color": Colors.purple,
    "name": "Avocado",
    "url":
        "https://as1.ftcdn.net/jpg/00/04/84/66/500_F_4846618_jATWP0FIM6vKTB1txxpNc2DLirM6Kwut.jpg"
  },
];
Widget product_card(String name, url, Color colorr) {
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: colorr.withOpacity(0.3)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
          ),
          child: Center(
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
          ),
        ),
        Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
        Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "  " + name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('120 LE/kg')
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(20)),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget product_list() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7),
        itemBuilder: (ctx, index) {
          return product_card(
              _prod[index]["name"], _prod[index]["url"], _prod[index]["color"]);
        }),
  );
}
