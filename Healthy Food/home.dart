import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List<Map<String, dynamic>> _data = [
    {
      "title": "Breakfast",
      "image": "assets/images/breakfast.jpg",
      // "https://image.freepik.com/free-photo/toast-egg-bacon-tomatoes-microgreens-salad_2829-4806.jpg",
      "selected": true,
    },
    {
      "title": "Lunch",
      "image": "assets/images/lunch.jpg",
      //"https://image.freepik.com/free-photo/traditional-tajine-dishes-couscous-fresh-salad-rustic-wooden-table-tagine-lamb-meat-pumpkin-top-view-flat-lay_2829-6116.jpg",
      "selected": false,
    },
    {
      "title": "Dinner",
      "image": "assets/images/dinner.jpg",
      // "https://image.freepik.com/free-photo/buddha-bowl-vegetarian-healthy-balanced-food-aloo-gobi-chickpeas-tomato-avocado-tabule-salad-spinach_118925-296.jpg",
      "selected": false,
    }
  ];
  int _currentselected = 0;
  Widget _catcard(String title, String imageurl, int index, bool selected) {
    return InkWell(
      onTap: () {
        setState(() {
          _data[_currentselected]["selected"] = false;
          _currentselected = index;
          _data[_currentselected]["selected"] = true;
        });
      },
      child: Container(
        width: 85,
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          // image :DecorationImage(image: AssetImage(imageurl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(100),
          color: selected ? Colors.red : Color.fromRGBO(247, 247, 247, 1),
        ),
        child: Column(
          children: [
            Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  /*image: DecorationImage(
                      image: NetworkImage(imageurl), fit: BoxFit.fill),*/
                  image: DecorationImage(
                      image: AssetImage(imageurl), fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                title,
                style: TextStyle(color: selected ? Colors.white : Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _prodcardtext = [
    {"food": "Avocado", "cat": "Fat", "image": "assets/images/avocado.jpg"},
    {
      "food": "Watermelon",
      "cat": "Suger",
      "image": "assets/images/watermelon.jpg"
    },
    {"food": "Bread", "cat": "carbohydrate", "image": "assets/images/bread.jpg"}
  ];
  List<Map<String, dynamic>> _benefittext = [
    {"food": "Fried Egg", "cat": "Vitamin D", "image": "assets/images/egg.jpg"},
    {"food": "Apple", "cat": "Vitamin A", "image": "assets/images/apple.jpg"}
  ];
  Widget _productcard(String t1, String t2, String t3) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: Color.fromRGBO(247, 247, 247, 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(t3), fit: BoxFit.fill),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    t1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 2,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    t2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _benefitcard(String t1, String t2, String t3) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 95,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 70,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(t3), fit: BoxFit.fill),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                vertical: 17,
              ),
              child: Column(
                children: [
                  Text(
                    t1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    t2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: null),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.redeem,
                color: Colors.black,
              ),
              onPressed: null),
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                children: [
                  Text(
                    "Food",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(bottom: 5, left: 15, right: 15, top: 0),
              child: Row(
                children: [
                  Text(
                    "Calories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (ctx, index) {
                return _catcard(_data[index]["title"], _data[index]["image"],
                    index, _data[index]["selected"]);
              },
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return _productcard(
                      _prodcardtext[index]["food"],
                      _prodcardtext[index]["cat"],
                      _prodcardtext[index]["image"]);
                }),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("Food",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Text("Benefits",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w300))
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return _benefitcard(_benefittext[index]["food"],
                      _benefittext[index]["cat"], _benefittext[index]["image"]);
                }),
          ),
        ],
      ),
    );
  }
}
