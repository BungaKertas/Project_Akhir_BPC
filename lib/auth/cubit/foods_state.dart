part of 'foods_cubit.dart';

sealed class FoodsState extends Equatable {
  const FoodsState();

  @override
  List<Object> get props => [];
}

final class FoodsInitial extends FoodsState {}
final class FoodsLoading extends FoodsState {}
final class FoodsSucces extends FoodsState {
  final List<FoodModel> foods;

  const FoodsSucces(this.foods,);

  @override
  List<Object> get props => [foods];
}
final class FoodsFailed extends FoodsState {
  final String error;
  
  const FoodsFailed(this.error);

  @override
  List<Object> get props => [error];
}
