import 'package:flutter/material.dart';
import 'package:test6/widges.dart';

class product_page extends StatefulWidget {
  @override
  _product_pageState createState() => _product_pageState();
}

class _product_pageState extends State<product_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: null),
        actions: [
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: null),
        ],
      ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 80,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 150,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://image.freepik.com/free-photo/fresh-oranges-fruit-table_74190-6153.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Expanded(
                      child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(top: 30, bottom: 10, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Orange",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 33,
                                  ),
                                ),
                                SizedBox(
                                  width: 240,
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 20, left: 20),
                                child: Text(
                                  "\$3.00/Kg",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Container(
                                width: 25,
                                height: 25,
                                padding: EdgeInsets.only(bottom: 1),
                                color: Colors.grey[200],
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "02",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                                width: 25,
                                height: 25,
                                color: Colors.yellow,
                                padding: EdgeInsets.only(bottom: 1),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 20, bottom: 20, left: 20),
                                child: Text(
                                  "Product Description",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 20),
                                child: Text(
                                  "cfhdyrfjfu jgfytdyv jfutf ",
                                  //"bhjfdjeg dfuetfdutew wgfdtwsvd wsgdfutwv dgwrdtwqv sdwfdwvd whjuwhd wygtv fdtwd wdgtwfdwv twf",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )),
                          ],
                        ),
                        Expanded(
                            child: Center(
                          child: Container(
                            width: 370,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ))
                ],
              ))
        ],
      ),
    );
  }
}
