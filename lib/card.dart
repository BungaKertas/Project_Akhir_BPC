import 'package:flutter/material.dart';
import 'package:project_akhir/food_model.dart';

class CardFoods extends StatelessWidget {
  final FoodModel foods;
  const CardFoods({super.key, required this.foods,});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(15,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15,),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(foods.image.toString()),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15,))
              ),
            ),
            const SizedBox(height: 10,),
            Text(foods.name.toString(), style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),),
            const SizedBox(height: 10,),
            Text(foods.harga.toString(), style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),),
        ],
      ),
    );
  }
}