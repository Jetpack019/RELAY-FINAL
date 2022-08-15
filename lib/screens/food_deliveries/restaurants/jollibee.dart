import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/res_data.dart';
import '../../../food_order/Family_Meals/8_pcs_CB_RJSD.dart';
import '../../../route_food_delivery/route_food_delivery.dart';

class Jollibee extends StatefulWidget {
  final FoodDeliver jollibee;

  const Jollibee({
    required this.jollibee,
  });

  @override
  State<Jollibee> createState() => _JollibeeState();
}

class _JollibeeState extends State<Jollibee> {
  String orderRestaurant_Location = 'Jollibee - Plaridel Bulacan';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 160,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.amber,
          title: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RouteRestaurant(
                          food_deliver: widget.jollibee,
                        ),
                      ),
                    );
                  },
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.jollibee.image,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              orderRestaurant_Location,
                              style: TextStyle(color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Material(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Image.asset(
                                      "assets/Orders/Jollibee/Jolibee_Screen/Favorites_icon_heart.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Image.asset(
                                      "assets/Orders/Jollibee/Jolibee_Screen/star_icon.png",
                                      height: 20,
                                      width: 20),
                                )),
                            Text(
                              "  4.6  ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              "  See details  ",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                              child: Text(
                                "  1.1 km  ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Text(
                              "  (25mins)  ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                              child: Text(
                                "  Deliver now  ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: Container(
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Image.asset(
                              "assets/Orders/Jollibee/Jolibee_Screen/fire_icon.png",
                              height: 30,
                              width: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Popular",
                                style: TextStyle(
                                  fontFamily: 'Word Sans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("Most ordered right now")
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                child: Text(
                                  "6 Sweet Pies-To-Go",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.black,
                                onTap: () {},
                                child: Ink(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/Orders/Jollibee/Top/6_Sweet.png",
                                        ),
                                        fit: BoxFit.fill,
                                      )),
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Material(
                            elevation: 15,
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Expanded(
                                    child: Text(
                                      "8pc Chickenjoy w/ Palabok \n Family Pan",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.black,
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => CB_RJSD_8p(),
                                      ),
                                    );
                                    setState(() {
                                      setRestaurant_Location(
                                          orderRestaurant_Location);
                                    });
                                  },
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/Orders/Jollibee/Top/CPFP_8pcs.png",
                                          ),
                                          fit: BoxFit.fill,
                                        )),
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                            elevation: 15,
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Expanded(
                                    child: Text(
                                      "2pc Chickenjoy Solo",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.black,
                                  onTap: () {},
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/Orders/Jollibee/Top/ChickenJoy_2pcs.png",
                                          ),
                                          fit: BoxFit.fill,
                                        )),
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                              ],
                            )),
                        Material(
                            elevation: 15,
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Expanded(
                                    child: Text(
                                      "2pc Chickenjoy Solo",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  onTap: () {},
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/Orders/Jollibee/Top/ChickenJoy_2pcs_two.png",
                                          ),
                                          fit: BoxFit.fill,
                                        )),
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.black,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Family Meals",
                      style: TextStyle(
                        fontFamily: 'Word Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Family_Meal/Family Box Solo.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          '4pc Chickenjoy Family Box Solo',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Family_Meal/Burger Steak Family Pan.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Burger Steak Family Pan',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Family_Meal/Burger Bundle.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Burger Bundle',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Family_Meal/Family Pan Duo.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Family Pan Duo',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Family_Meal/CBRJSD.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          '8pc Chickenjoy Bucket w/ Rice,Jolly Spaghetti, and Drinks',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.black,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beverages",
                      style: TextStyle(
                        fontFamily: 'Word Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Beverages/Coffee.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Coffee',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    Container(
                      child: ListTile(
                        minVerticalPadding: 30,
                        onTap: () {},
                        leading: Image.asset(
                          "assets/Orders/Jollibee/Beverages/Coke.png",
                        ),
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'Coke',
                            style: TextStyle(
                              fontFamily: 'Word Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Beverages/Coke Float.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Coke Float',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Beverages/Coke Zero.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Coke Zero',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Beverages/Hot Chocolate.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Hot Chocolate',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Beverages/Iced Tea.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Iced Tea',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Beverages/Pineapple Juice.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Pineapple Juice',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.black,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Desserts",
                      style: TextStyle(
                        fontFamily: 'Word Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Desserts/Peach Mango Pie.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Peach Mango Pie',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Image.asset(
                        "assets/Orders/Jollibee/Desserts/Buko Pie.png",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Buko Pie',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    ListTile(
                      minVerticalPadding: 30,
                      onTap: () {},
                      leading: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          "assets/Orders/Jollibee/Desserts/Chocolate Sundae Twirl.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Chocolate Sundae Twirl',
                          style: TextStyle(
                            fontFamily: 'Word Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      );

  Future<void> setRestaurant_Location(orderGetTotal) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderRestaurant_Location', orderRestaurant_Location);
  }
}
