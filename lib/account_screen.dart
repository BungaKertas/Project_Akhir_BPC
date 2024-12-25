import 'package:flutter/material.dart';
import 'package:project_akhir/home_screen.dart';
import 'package:project_akhir/login_screen.dart';
import 'package:project_akhir/order_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Profile Screen",),
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/ririn.jpeg'), 
                ),
                const SizedBox(
                height: 12,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama: Ririn Dwi Lestari Siregar',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'NPM: 24110018',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Jurusan: Teknik Informatika',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
                height: 12,
              ),
            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text('Pesanan'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                MaterialPageRoute(builder: (context) => const OrderScreen(),), (Route) => false
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sign Out'),
              onTap: () {
                // Tambahkan logika sign out di sini
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Sign Out'),
                    content: Text('Anda yakin ingin keluar?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen(),), (Route) => false,
                );
                          
                        },
                        child: Text('Keluar'),
                      ),
                    ],
                  ),
                );
              },
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
          ]
        ),
      ),
    );
  }
}