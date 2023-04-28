import 'package:flutter/material.dart';
import 'package:unidade_1/todo_item.dart';
import './models/todo.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  final _todoController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do List"),
      ),
      body: Column(
        children: [

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 20),

                  child: TextField(

                    controller: _todoController,
                      decoration: InputDecoration(
                        labelText: "Tarefa",
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.blue))
                      )

                  ),
                ),
              ),


            ],

          ),


          Column(
            children: [
              Container(

                margin: EdgeInsets.all(5),
                child: SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    child: Text("Cadastrar", style: TextStyle(fontSize: 15) ,),
                    onPressed: () {
                      _addToDoItem(_todoController.text);
                    },
                    style:  ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, minimumSize: Size(60, 60 )),
                  ),
                ),
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    for (ToDo todoo in todosList)
                      TodoItem(
                        todo: todoo,
                        onToDoChange: _handleToDoChange,
                      ),
                  ],
                ),
              ),

            ],
          ),
        ],

      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(id: DateTime.now().millisecondsSinceEpoch.toString(), todoText: toDo));

    });
    _todoController.clear();
  }

}
