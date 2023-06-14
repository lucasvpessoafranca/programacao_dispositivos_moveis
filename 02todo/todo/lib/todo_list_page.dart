import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LIsta de tarefas")),
      body: Container(
        padding: EdgeInsets.all(26),
        child: Column(children: [
          TextField(
            controller: _textEditingController,
          ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tarefas[index]),
                  onLongPress: () {
                    setState(() {
                      tarefas.removeAt(index);
                    });
                  },
                );
              },
            ),
          )
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              if (_textEditingController.text.length > 0) {
                setState(() {
                  tarefas.add(_textEditingController.text);
                  _textEditingController.clear();
                });
              }
              print(tarefas);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                tarefas = [];
              });
              print(tarefas);
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
