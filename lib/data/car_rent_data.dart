class CarRent {
  final String car;
  final String image_car;

  const CarRent({
    required this.car,
    required this.image_car,
  });
}

const allCars = [
  CarRent(car: 'BAIC', image_car: "assets/Car_Rent/Electrical/BAIC.png"),
  CarRent(car: 'BMW', image_car: "assets/Car_Rent/Electrical/bmw.png"),
  CarRent(car: 'Ford', image_car: "assets/Car_Rent/Standard/ford.png"),
  CarRent(car: 'MAZDA', image_car: "assets/Car_Rent/Standard/mazda.png"),
  CarRent(
      car: 'Tesla',
      image_car: "assets/Home_Screen/electrical-vehicles/Tesla-logo.png"),
  CarRent(
      car: 'RENAULT',
      image_car: "assets/Home_Screen/electrical-vehicles/Renault.png"),
  CarRent(
      car: 'NISSAN',
      image_car: "assets/Home_Screen/electrical-vehicles/nissan.png"),
  CarRent(car: 'HONDA', image_car: "assets/Home_Screen/standard/Honda.png"),
  CarRent(car: 'TOYOTA', image_car: "assets/Home_Screen/standard/Toyota.png"),
  CarRent(car: 'HYUNDAI', image_car: "assets/Home_Screen/standard/hyundai.png"),
];

class CarRentData {
  static List<CarRent> getSuggestions(String query) => List.of(allCars).where(
        (user) {
          final nameLower = user.car.toLowerCase();
          final queryLower = query.toLowerCase();

          return nameLower.contains(queryLower);
        },
      ).toList();
}
