import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/screens/add_task.dart';
import 'package:flutter_todoey/widgets/task_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.red[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.red[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.red[400],
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  radius: 31,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TodoIt',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TasksList(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: <Widget>[
//     Text(
//       'Buy Eggs',
//       style: TextStyle(fontSize: 26),
//     ),
//     Checkbox(value: value1, onChanged: (value) {})
//   ],
// ),
