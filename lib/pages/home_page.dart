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

  @override
  Widget build(BuildContext context) {
    debugPrint('chamando build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu App',
          //style: GoogleFonts.pacifico(),
        ),
      ),
      body: Center(
        child: Text(
          numeroGerado.toString(),
          //style: GoogleFonts.acme(fontSize: 20),
        ),
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
