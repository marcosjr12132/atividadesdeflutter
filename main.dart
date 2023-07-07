import 'package:flutter/material.dart';
import './ficha.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FICHA DE ALUNOS'),
        ),
        body: Column(
          children: [
            Ficha(
              fotodeperfil: 'assets/imagens/cristiano.jpg',
              nome: 'CRISTIANO RONALDO',
              matricula: 123,
              escola: 'CEFET-MG',
              anoeperiodo: '2023/2',
            ),
            Ficha(
              fotodeperfil: 'assets/imagens/neymar.jpg',
              nome: 'NEYMAR JUNIOR',
              matricula: 324,
              escola: 'INSTITUTO NEYMAR JR',
              anoeperiodo: '2023/1',
            ),
            Ficha(
              fotodeperfil: 'assets/imagens/messi.jpg',
              nome: 'ANKARA MESSI',
              matricula: 676,
              escola: 'LAURO EPIFANIO',
              anoeperiodo: '2023/7',
            ),
          ],
        ),
      ),
    );
  }
}