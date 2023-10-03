import 'package:flutter/material.dart';
import 'package:praktikum_todoapp/plan_provider.dart';
import 'package:praktikum_todoapp/views/plan_creator_screen.dart';
import 'package:praktikum_todoapp/views/plan_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return PlanProvider(
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: PlanCreatorScreen(),
      ),
    );
  }
}
