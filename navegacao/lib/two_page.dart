import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({super.key});

  @override
  State<TwoPage> createState() => _OnePageState();
}

class _OnePageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop("REtorno");
          },
          child: Text("ADICIONAR   $args "),
        ),
      ),
    );
  }
}
