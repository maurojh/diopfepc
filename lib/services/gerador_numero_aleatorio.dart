import 'dart:math';

class GeradorNumeroAleatorio {
  static int geraNumeroAleatorio() {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(1000);
  }
}