class TeslaModels {
  final String teslacars;
  final String teslacars_image;
  final String tesla_model_type;
  final int rent_price;
  final int add_per_DAY;
  final int other_cost;
  //top

  const TeslaModels(
      {required this.teslacars,
      required this.teslacars_image,
      required this.tesla_model_type,
      required this.rent_price,
      required this.add_per_DAY,
      required this.other_cost});
}

const allcarsTesla = [
  TeslaModels(
      teslacars: "Model X",
      teslacars_image: "assets/Cars/Tesla/Model-X.png",
      tesla_model_type: "MWA 143",
      rent_price: 3000,
      add_per_DAY: 3000,
      other_cost: 0),
  TeslaModels(
      teslacars: "Model S",
      teslacars_image: "assets/Cars/Tesla/Model-S.png",
      tesla_model_type: "IMY 143",
      rent_price: 3000,
      add_per_DAY: 3000,
      other_cost: 0),
  TeslaModels(
      teslacars: "Model 3",
      teslacars_image: "assets/Cars/Tesla/Model-3.png",
      tesla_model_type: "ILY 143",
      rent_price: 3000,
      add_per_DAY: 3000,
      other_cost: 0),
];
