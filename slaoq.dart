import 'package:aula/perguntas.dart';
import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;
  var cont = 0;
  List<Widget> botoes = [];

  final perguntas = [
    "pergunta1",
    "pergunta2",
    "pergunta3",
    "pergunta4"
  ];

  void eventobotao() {
    setState(() {
      contador: 0;
      contador++;
    });
    print(contador);
  }

  void criarbt() {
    setState(() {
      cont++;
      botoes.add(ElevatedButton(
        onPressed: eventobotao,
        child: Text("Botão $cont"),
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas e respostas!"),
            ),
            body: Column(
              children: [
                Column(children: [
                  Perguntas(perguntas[contador]),
                  ElevatedButton(onPressed: eventobotao, child: Text("sla1")),
                  ElevatedButton(onPressed: eventobotao, child: Text("sla2")),
                  ElevatedButton(onPressed: eventobotao, child: Text("sla3")),
                  ElevatedButton(onPressed: eventobotao, child: Text("sla4")),
                  TextField(
                    decoration: InputDecoration(labelText: 'digite sua resposta'),
                  ),
                  ElevatedButton(onPressed: criarbt, child: Text("botao criado")),
                ]),
                Column(children: botoes),
              ],
            )));
  }
}