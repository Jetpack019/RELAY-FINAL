import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_Desserts/sweetDesserts.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_Pizza/pizza_seeMore.dart';
import 'package:relay_finalize/screens/SeeMore/seeMore_Restaurant/restaurants_seemore.dart';
import '../../data/res_data.dart';
import '../../route_food_delivery/route_food_delivery.dart';

import '../delivery/order_details.dart';

class FoodDelivery extends StatefulWidget {
  FoodDelivery({Key? key}) : super(key: key);

  @override
  State<FoodDelivery> createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  int currentIndex = 1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController searchController = new TextEditingController();

  List<FoodDeliver> restaurant = allfoodDeliver;

  var textController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 180,
          flexibleSpace: Container(
              color: Color.fromARGB(255, 255, 182, 23),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Text(
                        'Food Delivery',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Word Sans',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: TypeAheadField<FoodDeliver?>(
                          hideSuggestionsOnKeyboardHide: true,
                          debounceDuration: Duration(milliseconds: 500),
                          textFieldConfiguration: TextFieldConfiguration(
                              decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OrderDetailsDelivery(),
                                  ),
                                );
                              },
                              child: Icon(Icons.shopping_cart_outlined,
                                  color: Colors.black),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'Search Restaurant',
                          )),
                          suggestionsCallback: UserData.getSuggestions,
                          itemBuilder: (context, FoodDeliver? suggestion) {
                            final user = suggestion!;

                            return ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(user.image),
                                ),
                              ),
                              title: Text(user.restaurant),
                            );
                          },
                          noItemsFoundBuilder: (context) => Container(
                            height: 100,
                            child: Center(
                              child: Text(
                                'No Restaurant Found',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ),
                          onSuggestionSelected: (FoodDeliver? suggestion) {
                            final user = suggestion!;

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    RouteRestaurant(food_deliver: user),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ))),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'Restaurant',
                                  style: TextStyle(
                                      fontFamily: 'Word Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(4)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/restaurant/pizza_hut_logo.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(6)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/restaurant/mcdonalds.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(1)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Food_Delivery/Restaurant/burger-king-logo.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(5)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/restaurant/new-vikings.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(0)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Restaurant/jollibee-logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(3)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Restaurant/KFC_logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(2)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Restaurant/chowking-logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SeeMoreRestaurants()),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Car_Rent/See_more.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 20),
                                child: Text(
                                  'Sweet Dessert',
                                  style: TextStyle(
                                      fontFamily: 'Word Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(7)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/Sweet_Dessert/red-ribbon.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(8)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/Sweet_Dessert/goldilocks.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(9)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/Sweet_Dessert/mango.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RouteRestaurant(
                                          food_deliver:
                                              restaurant.elementAt(10)),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/Home_Screen/Sweet_Dessert/Gardenia-Logo.png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(11)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Sweet-Dessert/Dairy-Queen-Logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(12)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Home_Screen/restaurant/Starbucks_Coffee.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(13)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Sweet-Dessert/happy-lemon-logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SeeMoreSweetDesserts()),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Car_Rent/See_more.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 20),
                              child: Text(
                                'Pizza',
                                style: TextStyle(
                                    fontFamily: 'Word Sans',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(14)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Pizza/pizza-hut-2.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(15)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Pizza/shakeys-logo.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => RouteRestaurant(
                                            food_deliver:
                                                restaurant.elementAt(16)),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Food_Delivery/Pizza/greenwich.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SeeMorePizza()),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Car_Rent/See_more.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
