import 'package:flutter/material.dart';
import 'package:navegacao/two_page.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("CONTAINER"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          // Navigator.of(context)
          //     .push(

          //       MaterialPageRoute(builder: (context) => const TwoPage()));
          Navigator.of(context)
              .pushNamed('/twoPage', arguments: 'test')
              .then((value) => print(value));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
