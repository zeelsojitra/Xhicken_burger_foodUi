import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  List categoryItems = [
    Icons.ramen_dining,
    Icons.lunch_dining,
    Icons.icecream,
    Icons.sports_bar,
    Icons.local_pizza,
  ];

  List items = [
    "Noodles",
    "Burger",
    "Desert",
    "Drink",
    "Pizza",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: List.generate(
                  5,
                  (index) => Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          categoryItems[index],
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      Text(items[index])
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: -30,
                    child: Image.asset(
                      'assets/images/beef_burger.png',
                      height: 140,
                      width: 140,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Beef Burger",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: -15,
                    child: Image.asset(
                      'assets/images/Chicken_Burger.png',
                      height: 140,
                      width: 140,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Chicken Burger",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: -30,
                    child: Image.asset(
                      'assets/images/gourmet_burgers.png',
                      height: 140,
                      width: 140,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Gourmet Burger",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
