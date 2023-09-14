// stf TAB
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/gerador_numero_aleatorio.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numeroGerado = 0;
  int quantidadeDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('chamando build');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu App',
          //style: GoogleFonts.pacifico(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Foi clicado: ${quantidadeDeCliques.toString()} vezes.',
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              'Número gerado foi: ${numeroGerado.toString()}',
              style: GoogleFonts.acme(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumeroAleatorio.geraNumeroAleatorio();
            quantidadeDeCliques = quantidadeDeCliques + 1;
          });
          debugPrint(numeroGerado.toString());
        },
      ),
    );
  }
}
