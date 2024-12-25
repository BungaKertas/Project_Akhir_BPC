import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_akhir/food_model.dart';
import 'package:project_akhir/services/food_services.dart';

part 'foods_state.dart';

class FoodsCubit extends Cubit<FoodsState> {
  FoodsCubit() : super(FoodsInitial());

  void getFood() async {
    try {
      emit(FoodsLoading());
      List<FoodModel> foods = await FoodServices().getFood(); 
      emit(FoodsSucces(foods));
    } catch (e) {
      print(e.toString());
      emit(FoodsFailed(e.toString()));
    }
  }
}
