import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                        ),
                      ]),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  width: 200,
                  height: 150,
                  child: Text("Desafio aula ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                        ),
                      ]),
                ),
              ]),
        ),
      ),
    );
  }
}
