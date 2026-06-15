import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const SoilApp());

class SoilApp extends StatelessWidget {
  const SoilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
