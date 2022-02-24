import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter_moor/db/todo_table.dart';

class MoorPage extends StatelessWidget {
  const MoorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    final TextEditingController titleControl = TextEditingController();

    late String title;
    DateTime time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Moor DB'),
      ),
    );
  }
}
