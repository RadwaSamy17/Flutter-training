import 'package:flutter/material.dart';
import 'package:shoes_sotre/productPage.dart';

BottomNavigationBar TestBottomBar(BuildContext context) {
  return BottomNavigationBar(
    selectedItemColor: Theme.of(context).backgroundColor,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true,
    items: [
      for (int i = 0; i < 4; i++)
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text(
            "test",
          ),
        )
    ],
  );
}

List image = [
  "https://image.freepik.com/free-photo/pair-white-athletic-sneakers_105718-3979.jpg",
  "https://image.freepik.com/free-photo/unbranded-modern-sporty-shoes-sneakers-white-isolated_120794-337.jpg",
  "https://image.freepik.com/free-photo/colorful-sport-shoes-mustard-color-wall_151013-4913.jpg",
  "https://image.freepik.com/free-photo/close-up-new-pair-grey-sneakers-standing-blue-surface_151013-16998.jpg",
  "https://image.freepik.com/free-photo/white-sports-shoes-sneakers-with-shoelaces-yellow-background-sport-lifestyle-concept-top-view-flat-lay_75163-2260.jpg",
  "https://image.freepik.com/free-photo/female-sport-sneakers-run-fitness-hanging-pink-background_224798-884.jpg"
];
Widget Shoes_Gridview(BuildContext context) {
  return GridView.builder(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 25),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (ctx, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => product_page()));
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image[index]))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 45,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.grey.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shoes$index",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "200\$",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
