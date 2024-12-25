class FoodModel {
  final String? image;
  final String? name;
  final String? harga;

  const FoodModel({
    this.harga,
    this.image,
    this.name,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      image: json["image"],
      harga: json["price"],
      name: json["name"],
    );
  } 
}