import 'package:bus_management/Screens/home.dart';
import 'package:bus_management/Screens/login.dart';
import 'package:bus_management/Screens/register.dart';
import 'package:bus_management/Screens/travle_history.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:bus_management/Provider/UserProvider.dart';
import 'package:provider/provider.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: BusManagement(),
    ),
  );
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
            const RegisterForm(), 
        "/travelHistory": (context) =>
            const TravleHistory(),
      },
    );
  }
}
