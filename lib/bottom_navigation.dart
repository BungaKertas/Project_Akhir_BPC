import 'package:flutter/material.dart';
import 'package:project_akhir/account_screen.dart';
import 'package:project_akhir/favorite_screen.dart';
import 'package:project_akhir/home_screen.dart';
import 'package:project_akhir/order_screen.dart';
import 'package:project_akhir/riwayat_screen.dart';

class HalamanBottom extends StatefulWidget {
  const HalamanBottom({super.key});

  @override
  State<HalamanBottom> createState() => _HalamanBottomState();
}

class _HalamanBottomState extends State<HalamanBottom> {
  int currentIndex = 0;
  final listBottom = [
    const HomeScreen(),
    const RiwayatScreen(),
    const FavoriteScreen(),
    const OrderScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listBottom[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blueGrey,
        elevation: 8,
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: "Riwayat"),
          BottomNavigationBarItem(icon: Icon(Icons.text_snippet),
          label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),
          label: "Pesanan"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
          label: "Account"),
        ],
        ),
    );
  }
}