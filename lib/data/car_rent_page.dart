import 'package:flutter/material.dart';
import 'package:relay_finalize/data/car_rent_data.dart';

class CarRentPage extends StatelessWidget {
  final CarRent cars;

  const CarRentPage({
    required this.cars,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(cars.car),
        ),
        body: ListView(
          children: [
            Image.asset(
              cars.image_car,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              cars.car,
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
}
