import 'package:flutter/material.dart';
import '../services/soil_classifier.dart';
import '../widgets/triangle_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final arcillaController = TextEditingController();
  final limoController = TextEditingController();
  final arenaController = TextEditingController();

  String resultado = "";
  double arcilla = 0, limo = 0, arena = 0;

  void calcular() {
    arcilla = double.tryParse(arcillaController.text) ?? 0;
    limo = double.tryParse(limoController.text) ?? 0;
    arena = double.tryParse(arenaController.text) ?? 0;

    if ((arcilla + limo + arena) != 100) return;

    resultado = SoilClassifier.classify(arcilla, limo, arena);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        const SizedBox(height: 60),
        const Text('Textura del Suelo'),
        ElevatedButton(onPressed: calcular, child: const Text('Calcular')),
        Text(resultado),
        SizedBox(
          width: 320,
          height: 280,
          child: CustomPaint(
            painter: TrianglePainter(arcilla: arcilla, arena: arena),
          ),
        )
      ])),
    );
  }
}