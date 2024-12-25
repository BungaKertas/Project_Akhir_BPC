import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_akhir/auth/cubit/auth_cubit.dart';
import 'package:project_akhir/auth/cubit/foods_cubit.dart';
import 'package:project_akhir/firebase_options.dart';
import 'package:project_akhir/splash_screen.dart';

void main() async {
  runApp(const MainActivity());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}
class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(),),
        BlocProvider(create: (context) => FoodsCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
