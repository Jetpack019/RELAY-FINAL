class FoodDeliver {
  final String restaurant;
  final String image;
  //top

  const FoodDeliver({
    required this.restaurant,
    required this.image,
  });
}

const allfoodDeliver = [
  FoodDeliver(
    restaurant: 'Jollibee',
    image: "assets/Food_Delivery/Restaurant/jollibee-logo.png",
  ),
  FoodDeliver(
    restaurant: 'Burger King',
    image: "assets/Food_Delivery/Restaurant/burger-king-logo.png",
  ),
  FoodDeliver(
    restaurant: 'Chowking',
    image: "assets/Food_Delivery/Restaurant/chowking-logo.png",
  ),
  FoodDeliver(
    restaurant: 'KFC',
    image: "assets/Food_Delivery/Restaurant/KFC_logo.png",
  ),
  FoodDeliver(
    restaurant: 'Pizza Hut',
    image: "assets/Home_Screen/restaurant/pizza_hut_logo.png",
  ),
  FoodDeliver(
    restaurant: 'Vikings',
    image: "assets/Home_Screen/restaurant/new-vikings.png",
  ),
  FoodDeliver(
    restaurant: 'Mc Donalds',
    image: "assets/Home_Screen/restaurant/mcdonalds.png",
  ),
  FoodDeliver(
    restaurant: 'Red Ribbon',
    image: "assets/Home_Screen/Sweet_Dessert/red-ribbon.png",
  ),
  FoodDeliver(
    restaurant: 'Goldilocks',
    image: "assets/Home_Screen/Sweet_Dessert/goldilocks.png",
  ),
  FoodDeliver(
    restaurant: 'Mango',
    image: "assets/Home_Screen/Sweet_Dessert/mango.png",
  ),
  FoodDeliver(
    restaurant: 'Gardenia',
    image: "assets/Home_Screen/Sweet_Dessert/Gardenia-Logo.png",
  ),
  FoodDeliver(
    restaurant: 'Dairy Queen',
    image: "assets/Food_Delivery/Sweet-Dessert/Dairy-Queen-Logo.png",
  ),
  FoodDeliver(
    restaurant: 'Star Bucks',
    image: "assets/Home_Screen/restaurant/Starbucks_Coffee.png",
  ),
  FoodDeliver(
    restaurant: 'Happy Lemon',
    image: "assets/Food_Delivery/Sweet-Dessert/happy-lemon-logo.png",
  ),
  FoodDeliver(
    restaurant: 'Pizza Hut',
    image: "assets/Food_Delivery/Pizza/pizza-hut-2.png",
  ),
  FoodDeliver(
    restaurant: 'Shakeys',
    image: "assets/Food_Delivery/Pizza/shakeys-logo.png",
  ),
  FoodDeliver(
    restaurant: 'Greenwich',
    image: "assets/Food_Delivery/Pizza/greenwich.png",
  ),
];

class UserData {
  static List<FoodDeliver> getSuggestions(String query) =>
      List.of(allfoodDeliver).where(
        (user) {
          final nameLower = user.restaurant.toLowerCase();
          final queryLower = query.toLowerCase();

          return nameLower.contains(queryLower);
        },
      ).toList();
}
