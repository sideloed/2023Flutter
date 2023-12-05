import 'package:ch11/ToDo.dart';
import 'package:flutter/material.dart';



class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override

  State<ToDoListPage> createState() => _ToDoListPageState();
  final _items = <ToDo>[];
  var _ToDoContriller = TextEditingController();

  void dispose(){
    _ToDoContriller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _ToDoContriller,
                    ),
                ),
                ElevatedButton(
                  onPressed: () => _addTodo(ToDo(_ToDoContriller.text)),
                  child: Text('추가'),
                ),
              ],
            ),
            Expanded(
                child: ListView(
                  children: _items.map((todo) => _buildItemWidget(todo)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(ToDo todo){
    return ListTile(
      onTap: (){},
      title: Text(
        todo.title,
        style: todo.isDone
            ? TextStyle(
          decoration:  TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: (){},
      ),
    );
  }

  void _addTodo(ToDo todo){
    setState(() {
      _items.add(todo);
      _ToDoContriller.text = '';
    });
  }
}
