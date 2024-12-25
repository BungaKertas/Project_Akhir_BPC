import 'package:flutter/material.dart';
import 'package:project_akhir/home_screen.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({super.key});

  @override
  State<RiwayatScreen> createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Riwayat',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
                height: 52,
              ),
            const Text(
              'January 20, 2024 Items: 15',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           const SizedBox(
                height: 12,
              ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey[200],
            ),
            const SizedBox(
                height: 12,
              ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey[200],
            ),
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
    );
  }
}

