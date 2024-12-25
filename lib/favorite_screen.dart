import 'package:flutter/material.dart';
import 'package:project_akhir/home_screen.dart';


class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<Map<String, String>> favoriteMenus = [
    {
      'name': 'nasgor',
      'image': 'assets/images/nasi.jpg',
    },
    {
      'name': 'bakso',
      'image': 'assets/images/bakso.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Menu Favorit',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
             const SizedBox(
                height: 50,
              ),
              ...favoriteMenus.map((menu) {
                return Column(
                  children: [
                    Image.asset(
                      menu['image']!,
                      width: 100,
                      height: 109,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 19,
                      ),
                    Text(
                      menu['name']!,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     const SizedBox(
                      height: 19,
                      ),
                  ],
                );
              // ignore: unnecessary_to_list_in_spreads
              }).toList(),
              const SizedBox(
                      height: 19,
                      ),
              TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                  context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (Route) => false,
                );
              },
              child: Text(
                'kembali',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
