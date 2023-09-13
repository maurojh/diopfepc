// stf TAB
import 'package:flutter/material.dart';

import '../services/gerador_numero_aleatorio.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('chamando build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App'),
      ),
      body: Center(
        child: Text(numeroGerado.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumeroAleatorio.geraNumeroAleatorio();
          });
          debugPrint(numeroGerado.toString());
        },
      ),
    );
  }
}
