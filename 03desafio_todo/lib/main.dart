import 'package:flutter/material.dart';
import 'package:unidade_1/home.dart';

void main () {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To do List",
      home: Home(),

    );
  }
}
