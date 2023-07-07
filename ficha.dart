import 'package:flutter/material.dart';

class Ficha extends StatelessWidget {
  final String fotodeperfil;
  final String nome;
  final int matricula;
  final String escola;
  final String anoeperiodo;

  Ficha({
    required this.fotodeperfil,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.anoeperiodo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            fotodeperfil,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            'Nome: $nome',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Matrícula: $matricula',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Escola: $escola',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Ano/Período: $anoeperiodo',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
