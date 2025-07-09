import 'package:bus_management/Screens/home.dart';
import 'package:bus_management/Screens/login.dart';
import 'package:bus_management/Screens/register.dart';
import 'package:bus_management/Screens/travle_history.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BusManagement());
}

class BusManagement extends StatelessWidget {
  const BusManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: LoginForm()),

      routes: {
        '/home': (context) => const HomeScreen(),
        "/login": (context) => const LoginForm(),
        "/register": (context) =>
            const RegisterForm(), // Assuming you have a Register screen
        "/travelHistory": (context) =>
            const TravleHistory(), // Assuming you have a Travel History screen
      },
    );
  }
}
