import 'package:praktikum_todoapp/models/task.dart';
import '../repository/repository.dart';

class Plan {
  final int id;
  String name = '';
  List<Task> tasks = [];
  Plan({required this.id, this.name = ''});

  int get completeCount => tasks.where((task) => task.complete).length;
  String get completenessMessage =>
      '$completeCount out of ${tasks.length} tasks';

  Plan.fromModel(Model model)
      : id = model.id,
        name = model?.data['name'],
        tasks = model?.data['task']
                ?.map<Task>((task) => Task.fromModel(task))
                .toList() ??
            <Task>[];

  Model toModel() => Model(id: id, data: {
        'name': name,
        'task': tasks.map((task) => task.toModel()).toList()
      });
}