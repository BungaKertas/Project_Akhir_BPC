import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_akhir/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5,), (){
      Navigator.pushAndRemoveUntil(
        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
        context, MaterialPageRoute(builder: (context) => const LoginScreen(),), (Route) => false,
      );
    },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                height: 225,
                width: 252,
                decoration:  const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/hatis.png",
                ),
                 fit: BoxFit.cover,
                  ),
                ),
                ),
                const SizedBox(
                height: 58,
              ),
            Text("Selamat Datang",
            style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
    ),
    );
  }
}