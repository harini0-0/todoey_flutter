import 'package:flutter/material.dart';
import 'Screens/Task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/modals/Task_Data.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //builder:(),
      create: (context)=> TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

