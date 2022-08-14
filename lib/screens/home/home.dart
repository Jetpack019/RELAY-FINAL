import 'package:flutter/material.dart';

import '../account/account.dart';
import '../car_Rent/car_rent.dart';
import '../food_Delivery/food_delivery.dart';
import '../food_and_car.dart/food_and_car.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = [
    FoodandCarScreen(),
    FoodDelivery(),
    CartRentScreent(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            iconSize: 25,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 255, 182, 23),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                label: 'Food Delivery',
                backgroundColor: Color.fromARGB(255, 255, 182, 23),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.car_rental),
                label: 'Car Rental',
                backgroundColor: Color.fromARGB(255, 255, 182, 23),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
                backgroundColor: Color.fromARGB(255, 255, 182, 23),
              ),
            ]),
      );
}
