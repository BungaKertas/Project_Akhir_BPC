import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_akhir/food_model.dart';

class FoodServices {
  CollectionReference collectionReference = FirebaseFirestore.instance.collection("foods",);

  Future<List<FoodModel>> getFood() async {
   try {
     QuerySnapshot querySnapshot = await collectionReference.get();
     List<FoodModel> foods = querySnapshot.docs.map((food) {
        return FoodModel.fromJson(food.data() as Map<String, dynamic>);
     }).toList();
     return foods;
   } catch (e) {
    print(e.toString());
     throw Exception("Error $e",);
   }
  }
}