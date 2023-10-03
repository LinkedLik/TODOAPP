import 'package:flutter/material.dart';
import 'package:praktikum_todoapp/controllers/plan_controllers.dart';
import 'models/data_layer.dart';

class PlanProvider extends InheritedWidget {
  final _controllers = PlanController();

  PlanProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static PlanController? of(BuildContext context) {
    PlanProvider? provider =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider?._controllers;
  }
}
