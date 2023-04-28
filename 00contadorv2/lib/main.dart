import 'package:flutter/material.dart';

void main ()  {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home "),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      onPressed: () {
        setState(() {
          contador++;
        });
      },),
      body: Center(
        child: Text("Contador $contador"),
      ),
      
    );
  }
}