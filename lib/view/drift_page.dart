import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter_moor/db/drift/database_drift.dart';

class DriftPage extends StatelessWidget {
  const DriftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final database = Provider.of<TodoDriftDatabase>(context);

    final TextEditingController titleControl = TextEditingController();

    String? title;
    DateTime? time;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Drift DB'),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: database.watchAllTasks(),
              builder: (context, AsyncSnapshot<List<DTodo>> snapshot) {
                final List<DTodo> tasks = snapshot.data ?? [];

                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (_, index) {
                    final DTodo task = tasks[index];

                    return ListTile(
                      title: Text(task.title),
                      subtitle: Text(task.targetTime != null
                          ? task.targetTime.toString()
                          : 'N/A'),
                      trailing: Checkbox(
                        value: task.isCompleted,
                        onChanged: (newBool) {
                          database
                              .updateTodo(task.copyWith(isCompleted: newBool));
                        },
                      ),
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Delete'),
                            content: const Text('Are you sure?'),
                            actions: [
                              TextButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: const Text('Delete'),
                                onPressed: () {
                                  Provider.of<TodoDriftDatabase>(context,
                                          listen: false)
                                      .deleteTodo(task);
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            margin:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    controller: titleControl,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (String text) {
                      title = text;
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.event),
                  onPressed: () async {
                    DateTime? selectedTime = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2050));
                    if (selectedTime != null && selectedTime != time) {
                      time = selectedTime;
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: () {
                    if (title != null && title!.isNotEmpty) {
                      titleControl.clear();

                      Provider.of<TodoDriftDatabase>(context, listen: false)
                          .insertTodo(
                        DTodo(
                          title: title!,
                          targetTime: time,
                          userID: 0,
                        ),
                      );
                      time = null;
                      title = null;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Can't save empty task"),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
