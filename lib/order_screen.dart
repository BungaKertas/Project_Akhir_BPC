import 'package:flutter/material.dart';
import 'package:project_akhir/home_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Detail Pesanan",
            style: TextStyle(
              fontSize: 32,
            ),
            ),
            Text(
              'Informasi Pesanan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
                height: 42,
              ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Detail pesanan akan ditampilkan di sini.',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
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
              )
          ],
        ),
      ),
    );
  }
}
 