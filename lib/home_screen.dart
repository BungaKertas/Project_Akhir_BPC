import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_akhir/auth/cubit/foods_cubit.dart';
import 'package:project_akhir/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    context.read<FoodsCubit>().getFood();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<FoodsCubit, FoodsState>(
          builder: (context, state) {
            if (state is FoodsSucces) {
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo,mau makan apa hari ini",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                TextField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                    hintText: 'Pesan apa?',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: state.foods.map((foods) {
                      return CardFoods(foods: foods);
                    }).toList(),
                  ),
                )
              ],
            );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
