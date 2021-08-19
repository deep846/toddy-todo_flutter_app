import 'package:flutter/material.dart';
import 'package:toddy/models/task_data.dart';
import 'package:toddy/screens/taskscreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => Taskdata(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Taskscreen(),
      ),
    );
  }
}
