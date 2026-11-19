
import 'package:flutter/material.dart';
import 'screens/tela_inicial.dart';

void main() {
  runApp(const LojaTendTudo());
}

class LojaTendTudo extends StatelessWidget {
  const LojaTendTudo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loja TendTudo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const TelaInicial(),
    );
  }
}