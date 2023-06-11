import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text("Dados"),
          backgroundColor: Colors.teal[700],
        ),
        body: Dadoos(),
      ),
    );
  }
}

class Dadoos extends StatefulWidget {
  Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  var numeroDadoEsquerda = 1;
  var numeroDadoDireta = 1;

  void alterarDados() {
    setState(() {
      numeroDadoDireta = Random().nextInt(6) + 1;
      numeroDadoEsquerda = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                alterarDados();
              });
            },
            child: Image.asset("imagens/dado$numeroDadoEsquerda.png"),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                alterarDados();
              });
            },
            child: Image.asset("imagens/dado$numeroDadoDireta.png"),
          ))
        ],
      ),
    );
  }
}
