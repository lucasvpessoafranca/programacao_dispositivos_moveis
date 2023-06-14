import 'package:flutter/material.dart';
import 'package:navegacao/one_page.dart';
import 'package:navegacao/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      // home: OnePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnePage(),
        '/twoPage': (context) => const TwoPage(),
      },
    );
  }
}
