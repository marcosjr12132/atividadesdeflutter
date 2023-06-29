import 'package:flutter/material.dart';
import './questionario.dart';

class Inicio extends StatelessWidget {
  final Function() iniciarr;

  Inicio(this.iniciarr);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'AQUI NO APP VOCE VAI ENCONTRAR AS PERGUNTAS E DEVE RESPONDE-LAS',

        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: iniciarr,
          child: Text('INICIAR QUESTIONARIO'),
        ),
      ],
    );
  }
}
