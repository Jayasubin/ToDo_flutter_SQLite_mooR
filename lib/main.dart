import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter_moor/db/moor/todo_table.dart';
import 'package:todo_flutter_moor/view/moor_page.dart';
import 'package:todo_flutter_moor/view/sqlite_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase(),
      child: const MaterialApp(
        title: 'Databases',
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moor and SQLite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MoorPage(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 30.0,
                ),
                child: Text('Moor'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SQLitePage(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 100.0,
                  vertical: 30.0,
                ),
                child: Text('SQLite'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
