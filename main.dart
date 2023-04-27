import 'package:flutter/material.dart';
main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget{
  const ComponenteInicial({super.key});

  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;
  get perguntas => [
    "quantos anos voce tem?",
    "voce gosta de qual comida?",
    "qual a cor da sua roupa?",
    "quem é o pior professor?"
  ];

  void eventobotao() {
    setState(() {
      contador: contador++;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas e respostas"),
            ),
            body: Column(
              children: [
                Text(perguntas[contador]),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("Clique"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Anonimo");
                  },
                  child: Text("Anonimo"),
                ),
                ElevatedButton(
                  onPressed: () => print("Função arrow"),
                  child: Text("Meu botao"),
                ),
                  ElevatedButton(
                  onPressed: null
                  child: Text("Nulo"),
                ),
                Column(children: <Widget>[
                  Text('Aprendendo'),
                  Text('Programação'),
                  Text('Flutter'),
                ]),
              ],
            )));
  }
}